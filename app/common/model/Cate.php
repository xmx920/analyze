<?php

namespace app\common\model;

class Cate extends Base
{

    const BF = 1;
    const BK = 2;
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = false;


    // 获取列表
    public static function getList($where = array(), $order = ['sort', 'id'=>'desc']){
        $list = self::where($where)
            ->order($order)
            ->select();
        return $list;
    }


    //前台获取分类
    public static function getCate($type)
    {
        return self::where('type', $type)->select();
    }
}