<?php


namespace app\common\service;


use app\common\service\Script as scriptService;
use think\facade\Db;

class Script
{
    const SSC_URL = 'http://www.off0.com/list';  //时时彩

    public static function getData()
    {
        $url = self::SSC_URL;
        $res = curl_get($url);
        $data = json_decode($res, true);
        return $data;
    }

    public static function getIssue()
    {
        //数据库最新的期号
        $data['max_issue'] = Db::name('ssc')
            ->order('id desc')
            ->value('issue');
        //上一次三同期号
        $data['st_issue'] = Db::name('ssc')
            ->where('is_st', 1)
            ->order('id desc')
            ->value('issue');
        //上一次有前中后的期号
        $data['qzh_issue'] = Db::name('ssc')
            ->where('qzh', '>', 0)
            ->order('id desc')
            ->value('issue');
        //上一次前三期号
        $data['zs_issue'] = Db::name('ssc')
            ->where('qzh', 1)
            ->order('id desc')
            ->value('issue');
        //上一次中三期号
        $data['zs_issue'] = Db::name('ssc')
            ->where('qzh', 2)
            ->order('id desc')
            ->value('issue');
        //上一次后三期号
        $data['hs_issue'] = Db::name('ssc')
            ->where('qzh', 3)
            ->order('id desc')
            ->value('issue');
        //和
        $data['he_issue'] = Db::name('ssc')
            ->where('is_he', 1)
            ->order('id desc')
            ->value('issue');
        //大四喜
        $data['ds_issue'] = Db::name('ssc')
            ->where('is_ds', 1)
            ->order('id desc')
            ->value('issue');
        return $data;
    }

    public static function getPage1($num1, $num2, $num3, $num4, $num5)
    {
        $total = self::getTotal($num1, $num2, $num3, $num4, $num5);
        //数据库赋值
        $param['page1_num1'] = $num1;
        $param['page1_num2'] = $num2;
        $param['page1_num3'] = $num3;
        $param['page1_num4'] = $num4;
        $param['page1_num5'] = $num5;
        $param['page1_lh'] = scriptService::getLh($num1, $num5);  //龙虎
        $param['page1_qs'] = scriptService::getThird($num1, $num2, $num3); //前三
        $param['page1_zs'] = scriptService::getThird($num2, $num3, $num4); //中三
        $param['page1_hs'] = scriptService::getThird($num3, $num4, $num5); //后三
        $param['page1_total1'] = $total[0];
        $param['page1_total2'] = $total[1];
        $param['page1_total3'] = $total[2];
        return $param;
    }

    public static function getPage2($issueData, $same, $issue, $t_count)
    {
        $param = [];
        if ($t_count <= 3) {
            $param['is_st'] = 1;
            $param['page2_num1'] = $issue - $issueData['st_issue'];  //三同间隔

            $param['qzh'] = $same['qzh'];
            if ($same['qzh']) {
                $param['page2_num2'] = $param['page2_num1'];  //三同开豹子
                $param['page2_num3'] = $issue - $issueData['qzh_issue']; //豹子间隔
                $param['page2_qs'] = $same['qs'];
                $param['page2_zs'] = $same['zs'];
                $param['page2_hs'] = $same['hs'];
                if ($same['qzh'] == 1) {
                    $param['page2_num4'] = $issue - $issueData['qs_issue'];  //前豹子间隔
                } elseif ($same['qzh'] == 2) {
                    $param['page2_num5'] = $issue - $issueData['zs_issue']; //中豹子间隔
                } elseif ($same['qzh'] == 3) {
                    $param['page2_num6'] = $issue - $issueData['hs_issue']; //后豹子间隔
                }
            } else {
                $param['num2'] = 0;
            }
        }
        return $param;
    }

    public static function getPage3($issueData, $same, $issue, $num1, $num5)
    {
        $param = [];
        if ($num1 == $num5) {
            $param['is_he'] = 1;
            $param['page3_num1'] = $issue - $issueData['he_issue'];
        }
        if ($same['qzh']) {
            $param['page3_num3'] = $issue - $issueData['he_issue'];
        } else {  //显示了豹子就不显示三同了
            if ($same['st']) {
                $param['page3_num2'] = $issue - $issueData['he_issue'];
            }
        }
        return $param;
    }

    public static function getPage4()
    {
        $param = [];
        return $param;
    }

    public static function getPage5($issueData, $issue, $t_count)
    {
        $param = [];
        if ($t_count <= 2) {
            $param['is_ds'] = 1;
            $param['page5_num1'] = $issue - $issueData['ds_issue'];
        }
        return $param;
    }




    //龙：万>个
    //虎：万<个
    //和：万=个
    public static function getLh($num1, $num5)
    {
        if ($num1 > $num5) {
            return '龙';
        } else if ($num1 < $num5) {
            return '虎';
        } else {
            return '和';
        }
    }

    //杂六：不相连也不相等
    //组三：有两个相同的数字
    //半顺：有两个数字相连
    //顺子：三个数相连
    //豹子：三个数相同
    public static function getThird($n1, $n2, $n3)
    {
        $res = '';
        if ($n1 == $n2 && $n1 == $n3 && $n2 == $n3) {
            $res = '豹子';
        } else {
            $dz = 0;
            if ($n1 == $n2) {
                $dz++;
            }
            if ($n1 == $n3) {
                $dz++;
            }
            if ($n2 == $n3) {
                $dz++;
            }
            if ($dz == 1) {
                $res = '对子';
            } else {
                $bb = 0;
                if (abs($n1 - $n2) == 1) {
                    $bb++;
                }
                if (abs($n1 - $n3) == 1) {
                    $bb++;
                }
                if (abs($n2 - $n3) == 1) {
                    $bb++;
                }
                if ($bb == 0) {
                    $res = '杂六';
                }
                if ($bb == 1) {
                    $res = '半顺';
                }
                if ($bb == 2) {
                    $res = '顺子';
                }
            }
        }
        return $res;
    }

    //获取总和
    public static function getTotal($num1, $num2, $num3, $num4, $num5)
    {
        $data = [];
        $total = $num1 + $num2 + $num3 + $num4 + $num5;
        $data[] = $total;
        if ($total % 2) {
            $data[] = '双';
        } else {
            $data[] = '单';
        }
        if ($data > 22) {
            $data[] = '大';
        } else {
            $data[] = '小';
        }
        return $data;
    }

    //是否为三同,五个数字有三个数字相同
    public static function isSt($num1, $num2, $num3, $num4, $num5)
    {
        $n = 0;
        for ($i = 0; $i < 10; $i++) {
            $num1 == $i && $n++;
            $num2 == $i && $n++;
            $num3 == $i && $n++;
            $num4 == $i && $n++;
            $num5 == $i && $n++;
            if ($n >= 3) {
                return true;
            }
            $n = 0;
        }
        return false;
    }

    public static function getSame($num1, $num2, $num3, $num4, $num5)
    {
        $same = $qzh = $qzh = $qs = $zs = $hs = 0;
        if (($num1 == $num2 && $num1 == $num3)) {
            $same = 1;
            $qzh = 1;
            $qs = $num1 . $num2 . $num3;
        } elseif ($num2 == $num3 && $num2 == $num4) {
            $same = 1;
            $qzh = 2;
            $zs = $num2 . $num3 . $num4;
        } elseif ($num3 == $num4 && $num3 == $num5) {
            $same = 1;
            $qzh = 3;
            $hs = $num3 . $num4 . $num5;
        } else if (($num4 == $num5 && $num4 == $num1) || $num5 == $num1 && $num5 == $num2) {
            $same = 1;
        }
        return [
            'st' => $same,
            'qzh' => $qzh,
            'qs' => $qs,
            'zs' => $zs,
            'hs' => $hs,
        ];
    }

}