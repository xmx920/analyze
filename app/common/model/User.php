<?php
/**
 * +----------------------------------------------------------------------
 * | 公共会员列表模型
 * +----------------------------------------------------------------------
 */

namespace app\common\model;

use app\admin\model\Admin;
use think\facade\Request;
use think\model\concern\SoftDelete;

class User extends Base
{
    use SoftDelete;
    protected $defaultSoftDelete = 0;

    // 一对一获取所属用客户来源
    public function from()
    {
        return $this->hasOne('From', 'id', 'from_id');
    }

    public function admin()
    {
        return $this->hasOne('Admin', 'id', 'admin_id');
    }

    // 获取列表
    public static function getList($where = array(), $pageSize, $order = ['sort', 'id' => 'desc'])
    {
        $list = self::where(formatWhere($where))
            ->order($order)
            ->paginate([
                'query' => Request::get(),
                'list_rows' => $pageSize,
            ]);
        foreach ($list as $k => $v) {
            $v['from_name'] = $v->from->getData('name');
            $v['admin_name'] = $v->admin->getData('username');
            $v['sex'] = self::getSex($v['sex']);
            $v['status'] = self::getStatus($v['status']);
        }
        return $list;
    }

    public static function getSex($sex)
    {
        if ($sex == 1) {
            $sex = '男';
        } elseif ($sex == 2) {
            $sex = '女';
        } else {
            $sex = '未知';
        }
        return $sex;
    }

    public static function getStatus($status)
    {
        switch ($status) {
            case 1:
                $res = '未派单';
                break;
            case 2:
                $res = '已派单';
                break;
            case 3:
                $res = '已结算';
                break;
            default:
                $res = '错误状态';
                break;
        }
        return $res;
    }

    //----  客户状态
    //未派单  已派单  已结算

    //---   订单状态
    //待处理  不重单  重单  已见面  已成交  已对账




}