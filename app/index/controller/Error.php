<?php

namespace app\index\controller;

use app\common\model\Cate;

use think\facade\Db;
use think\facade\Request;
use think\facade\View;

class Error extends Base
{
    protected $moduleId;  //当前模型ID
    protected $tableName; //当前模型对应的数据表

    public function initialize()
    {
        parent::initialize();
    }

    // 列表
    public function index()
    {
        echo 'index/error/index';
    }

    // 详情
    public function info()
    {
        echo 'error/info';
        die;
    }

}
