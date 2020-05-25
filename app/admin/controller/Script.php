<?php


namespace app\admin\controller;

use think\facade\Db;
use app\common\service\script as scriptService;

/**
 * 定时获取数据并入库
 * Class Script
 * @package app\admin\controller
 */
class Script
{
    const SSC_URL = 'http://www.off0.com/list';  //时时彩

    public function index()
    {
        try {
            //获取数据
            $data = scriptService::getData();
            $data = array_reverse($data);

            //数据库最大的期号
            $issueData = scriptService::getIssue();
            $count = 0;
            foreach ($data as $item) {
                //数据处理
                $issue = $item['issue'];
                if ($issue <= $issueData['max_issue']) { //过滤掉已经存在的期数
                    continue;
                }
                $result = explode(',', $item['result']);
                $t_count = count(array_unique($result));
                $num1 = $result[0];
                $num2 = $result[1];
                $num3 = $result[2];
                $num4 = $result[3];
                $num5 = $result[4];
                $day_issue = substr($item['time'], 11, 2) * 60 + substr($item['time'], 14, 2);
                $same = scriptService::getSame($num1, $num2, $num3, $num4, $num5);
                //赋值
                $param['issue'] = $issue;
                $param['day_issue'] = $day_issue;
                $param['num'] = $num1 . $num2 . $num3 . $num4 . $num5;
                //1.单双、大小
                $page1 = scriptService::getPage1($num1, $num2, $num3, $num4, $num5);
                //2.和规则统计豹子
                $page2 = scriptService::getPage2($issueData, $same, $issue, $t_count);
                //3.期数统计豹子
                $page3 = scriptService::getPage3($issueData, $same, $issue, $num1, $num5);
                //4.豹子玩法
                $page4 = scriptService::getPage4();
                //5.大四喜统计
                $page5 = scriptService::getPage5($issueData, $issue, $t_count);
                $params = $param + $page1 + $page2 + $page3 + $page4 + $page5;
                if (Db::name('ssc')->insert(($params))) {
                    $count ++;
                }
                unset($params);
            }
            echo $count;
        } catch (\Exception $e) {
            echo '';
            //写入日志   todo
            echo $e->getMessage();
        }

    }


    public function test()
    {
        $arr = [
            1, 2, 3, 5, 4
        ];
        dump(count(array_unique($arr)));
    }

}