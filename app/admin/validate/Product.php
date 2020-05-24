<?php
namespace app\admin\validate;

use think\Validate;

class product extends Validate
{
    protected $rule = [
        'cate_id|产品分类' => [
            'require' => 'require',
        ],
        'title|名称' => [
            'require' => 'require',
            'max' => '255',
        ],
        'sort|排序' => [
            'require' => 'require',
            'number'  => 'number',
        ],
        'hits|点击数' => [
            'require' => 'require',
            'number'  => 'number',
        ]
    ];
}