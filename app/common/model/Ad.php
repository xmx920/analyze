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

class Ad extends Base
{
    // 定义时间戳字段名
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';

    const INDEX_BANNER = 1;
    const PRODUCT_BANNER = 2;
    const APPLY_BANNER = 3;
    const SUPPORT_BANNER = 4;
    const ABOUT_BANNER = 5;
    const concat_BANNER = 5;
    const PROVE = 7;



    // 一对一获取所属广告位
    public function adType()
    {
        return $this->belongsTo('AdType', 'type_id');
    }

    // 获取列表
    public static function getList($where = array(), $pageSize, $order = ['sort', 'id' => 'desc'])
    {
        $list = self::where($where)
            ->order($order)
            ->paginate([
                'query' => Request::get(),
                'list_rows' => $pageSize,
            ]);
        foreach ($list as $k => $v) {
            $v['type_name'] = $v->adType->getData('name');
        }
        return $list;
    }

    public static function getAdByType($type_id)
    {
        $where = [
            'type_id' => $type_id,
            'status' => 1
        ];
        $order = ['sort', 'id' => 'desc'];
        $res = self::where($where)->order($order)->select();
        return $res;
    }


}