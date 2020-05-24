<?php
/**
 * +----------------------------------------------------------------------
 * | 公共友情链接模型
 * +----------------------------------------------------------------------
 *
 * +----------------------------------------------------------------------
 */
namespace app\common\model;

use think\facade\Request;

class Link extends Base
{
    // 定义时间戳字段名
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';

    // 获取列表
    public static function getList($where = array(), $pageSize, $order = ['sort', 'id'=>'desc']){
        $list = self::where($where)
            ->order($order)
            ->paginate([
                'query'     => Request::get(),
                'list_rows' => $pageSize,
            ]);
        return $list;
    }

    public static function getLink()
    {
        return self::where('status', 1)->order(['sort'=>'asc', 'id' =>'asc'])->select();
    }
}