<?php
/**
 * +----------------------------------------------------------------------
 * | 会员验证器
 * +----------------------------------------------------------------------
 */

namespace app\admin\validate;

use think\Validate;

class User extends Validate
{
    protected $rule = [
        'from_id|客户来源' => [
            'require' => 'require',
        ],
        'username|客户姓名' => [
            'require' => 'require',
        ],
        'phone|手机' => [
            'unique' => 'user',
            'phone' => 'mobile'
        ],
        'project_ids|服务项目' => [
            'require' => 'require',
        ],
    ];
}