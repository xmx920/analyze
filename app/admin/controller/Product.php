<?php

namespace app\admin\controller;

use app\common\model\Product as M;

use think\facade\Db;
use think\facade\Request;
use think\facade\View;

class Product extends Base
{
    protected $validate = 'Product';
    protected $cate = null;  //分类列表
    protected $type = 0;

    public function initialize()
    {
        parent::initialize();
    }

    // 列表
    public function index()
    {
        //全局查询条件
        $title = Request::param('title', '');
        $cate_id = Request::param('cate_id', 0);
        $where[] = ['p.type', '=', $this->type];
        if ($title) {
            $where[] = ['p.title', 'like', '%' . $title . '%'];
        }
        if ($cate_id) {
            $where[] = ['p.cate_id', '=', $cate_id];
        }
        //获取列表
        $list = M::getList($where, $this->pageSize);

        $cate = Db::name('Cate')
            ->order('sort asc')
            ->select();

        $cate = tree($cate);

        $view = [
            'ruleList' => $cate,
            'title' => $title,
            'cate_id' => $cate_id,
            'pageSize' => page_size($this->pageSize, $list->total()),
            'page' => $list->render(),
            'list' => $list,
            'empty' => empty_list(12),
        ];
        View::assign($view);
        return View::fetch('index');
    }

    // 添加
    public function add()
    {
        $cate_id = Request::param('cate_id', 0);
        $cate = Db::name('Cate')
            ->order('sort asc')
            ->select();
        $cate = tree($cate);

        $view = [
            'info' => null,
            'cate_id' => $cate_id,
            'ruleList' => $cate
        ];
        View::assign($view);
        return View::fetch();
    }

    // 添加保存
    public function addPost()
    {
        $data = Request::except(['file'], 'post');
        $result = $this->validate($data, $this->validate);
        if (true !== $result) {
            // 验证失败 输出错误信息
            $this->error($result);
        } else {
            $result = M::addPost($data);
            if ($result['error']) {
                $this->error($result['msg']);
            } else {
                $this->success($result['msg'], 'index?cate_id=' . $data['cate_id']);
            }
        }
    }

    // 修改
    public function edit()
    {
        $id = Request::param('id');
        $info = M::find($id);
        $cate = Db::name('Cate')
            ->order('sort asc')
            ->select();
        $cate = tree($cate);

        $view = [
            'info' => $info,
            'cate_id' => $info['cate_id'],
            'ruleList' => $cate
        ];
        View::assign($view);
        return View::fetch('add');
    }

    // 修改保存
    public function editPost()
    {
        $data = Request::except(['file'], 'post');
        $result = $this->validate($data, $this->validate);
        if (true !== $result) {
            // 验证失败 输出错误信息
            $this->error($result);
        } else {
            $result = M::editPost($data);
            if ($result['error']) {
                $this->error($result['msg']);
            } else {
                $this->success($result['msg'], 'index?cate_id=' . $data['cate_id']);
            }
        }
    }

    // 删除
    public function del()
    {
        if (Request::isPost()) {
            $id = Request::param('id');
            return M::del($id);
        }
    }

    // 批量删除
    public function selectDel()
    {
        if (Request::isPost()) {
            $id = Request::param('id');
            return M::selectDel($id);
        }
    }

    // 排序
    public function sort()
    {
        if (Request::isPost()) {
            $data = Request::post();
            return M::sort($data);
        }
    }

    // 状态
    public function state()
    {
        if (Request::isPost()) {
            $id = Request::param('id');
            return M::state($id);
        }
    }

}
