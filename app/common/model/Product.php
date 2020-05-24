<?php

namespace app\common\model;

use think\facade\Request;

class Product extends Base
{
    // 定义时间戳字段名
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';

    // 获取列表
    public static function getList($where = array(), $pageSize, $order = ['sort', 'p.id' => 'desc'])
    {
        $list = self::name('product')->alias('p')
            ->leftjoin('cate c', 'c.id = p.cate_id')
            ->field('p.*, c.title as catename')
            ->where($where)
            ->order($order)
            ->paginate([
                'query' => Request::get(),
                'list_rows' => $pageSize,
            ]);
        return $list;
    }

    //前台首页产品图片
    public static function getProduct($where, $limit, $order = [])
    {
        $where[] = ['status', '=', 1];
        if (!$order) {
            $order = ['sort', 'id' => 'desc'];
        }
        $list = self::name('product')->where($where)->order($order)->limit($limit)->select();
        return $list;
    }

}
