<?php
/**
 * | 内容控制器
*/
namespace app\admin\controller;

use app\common\model\Tags;
use think\facade\Config;
use think\facade\Db;
use think\facade\Request;
use think\facade\View;

class Error extends Base
{
    public function initialize()
    {
        parent::initialize();
    }

    // 列表
    public function index(){
        echo 'admin/error/index';
    }
}
