<?php


namespace app\common\service;


class Script
{
    const SSC_URL = 'http://www.off0.com/list';  //时时彩


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

    //是否为豹子,五个数字有三个数字相同
    public static function isBaoZi($num1, $num2, $num3, $num4, $num5)
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
            $qzh = 1;
            $zs = $num2 . $num3 . $num4;
        } elseif ($num3 == $num4 && $num3 == $num5) {
            $same = 1;
            $qzh = 1;
            $hs = $num3 . $num4 . $num5;
        }
        else if (($num4 == $num5 && $num4 == $num1) || $num5 == $num1 && $num5 == $num2) {
            $same = 1;
        }
        return [
            'same' => $same,
            'qzh' => $qzh,
            'qs' => $qs,
            'zs' => $zs,
            'hs' => $hs,
        ];
    }

}