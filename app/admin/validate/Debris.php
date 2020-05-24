<?php
/**
 * +----------------------------------------------------------------------
 * | 碎片管理验证器
 * +----------------------------------------------------------------------
 */
namespace app\admin\validate;

use think\Validate;

class Debris extends Validate
{
    protected $rule = [
        'title|碎片标题' => [
            'require' => 'require',
            'max'     => '255',
        ],

    ];
}