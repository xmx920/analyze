<?php
/**
 * +----------------------------------------------------------------------
 * | 会员验证器
 * +----------------------------------------------------------------------
 *
 * +----------------------------------------------------------------------
 */
namespace app\admin\validate;

use think\Validate;

class Users extends Validate
{
    protected $rule = [
        'type_id|会员组' => [
            'require' => 'require',
        ],
        'email|邮箱账号' => [
            'require' => 'require',
            'min'     => '5',
            'max'     => '100',
            'unique'  => 'users',
        ],
        'mobile|联系电话' => [
            'unique'  => 'users',
        ],
    ];
}