<?php
namespace app\admin\validate;

use think\Validate;

class Message extends Validate
{
    protected $rule = [
        'title|标题不能为空,' => [
            'require' => 'require',
        ],
    ];
}