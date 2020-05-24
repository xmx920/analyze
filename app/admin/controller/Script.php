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
            $url = self::SSC_URL;
            $res = curl_get($url);
            $data = json_decode($res, true);
            //上一期期间
            $rule10_issue = Db::name('table1')
                ->where('type', 1)
                ->order('id desc')
                ->value('issue');
            //上一次豹子期号
            $rule20_issue = Db::name('table2')
                ->where('type', 1)
                ->order('id desc')
                ->value('issue');
            //上一次前三期号
            $rule21_issue = Db::name('table2')
                ->where('type', 1)
                ->order('id desc')
                ->value('issue');
            //上一次中三期号
            $rule22_issue = Db::name('table2')
                ->where('type', 1)
                ->order('id desc')
                ->value('issue');
            //上一次后三期号
            $rule23_issue = Db::name('table2')
                ->where('type', 1)
                ->order('id desc')
                ->value('issue');

            foreach ($data as $item) {
                $issue = $item['issue'];
                //1单双、大小｜三同规则统计豹子，期数统计豹子，大四喜统计
                //过滤掉已经存在的期数
                if ($issue <= $issue) {
                    continue;
                }
                $result = explode(',', $item['result']);
                $num1 = $result[0];
                $num2 = $result[1];
                $num3 = $result[2];
                $num4 = $result[3];
                $num5 = $result[4];
                $total = scriptService::getTotal($num1, $num2, $num3, $num4, $num5);
                //数据库赋值
                $param['issue'] = $issue;
                $param['num1'] = $num1;
                $param['num2'] = $num2;
                $param['num3'] = $num3;
                $param['num4'] = $num4;
                $param['num5'] = $num5;
                $param['lh'] = scriptService::getLh($num1, $num5);  //龙虎
                $param['qs'] = scriptService::getThird($num1, $num2, $num3); //前三
                $param['zs'] = scriptService::getThird($num2, $num3, $num4); //中三
                $param['hs'] = scriptService::getThird($num3, $num4, $num5); //后三
                $param['total1'] = $total[0];
                $param['total2'] = $total[1];
                $param['total3'] = $total[2];
                $params[] = $param;

                //2.和规则统计豹子
                if (scriptService::isBaoZi($num1, $num2, $num3, $num4, $num5)) {
                    $baoZiParam['num'] = $item['result'];  //2开奖号码
                    $baoZiParam['num1'] = $issue - $rule10_issue;  //2三同间隔
                    $same = scriptService::getSame($num1, $num2, $num3, $num4, $num5);
                    if ($same['qzh']) {
                        $baoZiParam['num2'] = $baoZiParam['num1'];  //三同开豹子3
                    } else {
                        $baoZiParam['num2'] = 0;
                    }
                    $baoZiParam['num3'] = 0;  //豹子间隔
                    if ($same['qs']) {
                        $baoZiParam['num3'] = $issue - $rule21_issue;
                    }
                    if ($same['zs']) {
                        $baoZiParam['num3'] = $issue - $rule22_issue;
                    }
                    if ($same['hs']) {
                        $baoZiParam['num3'] = $issue - $rule23_issue;
                    }
                    $baoZiParam['qs']  = $same['qs'];  //前三
                    $baoZiParam['zs']  = $same['zs'];  //中三
                    $baoZiParam['hs']  = $same['hs'];  //后三

                    $baoZiParams[] = $baoZiParam;

                }

            }
            if (isset($params)) {
                Db::name('table1')->insertAll(array_reverse($params));
                if (isset($baoZiParams)) {

                }
            }
            if (isset($baoZiParams)) {

            }
            unset($params);
            echo 'success';
        } catch (\Exception $e) {
            //写入日志   todo
            echo $e->getMessage();
        }

    }


    public function test()
    {
        $arr = [
            1, 2, 3, 4, 4
        ];
        scriptService::getSame($arr);
    }

}