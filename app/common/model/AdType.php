<?php
/**
 * +----------------------------------------------------------------------
 * | 公共广告位模型
 * +----------------------------------------------------------------------
 *
 * +----------------------------------------------------------------------
 */
namespace app\common\model;

use think\facade\Request;

class AdType extends Base
{
    // 定义时间戳字段名
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';

    // 一对多获取广告
    public function ads()
    {
        return $this->hasMany('Ad','type_id');
    }

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
}