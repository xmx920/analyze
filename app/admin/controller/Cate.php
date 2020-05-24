<?php

namespace app\admin\controller;


use app\common\model\Cate as M;
use think\facade\Db;
use think\facade\Request;
use think\facade\View;

class Cate extends Base
{
    /**
     * 产品分类列表
     */
    public function index()
    {
        $list = Db::name('cate')
            ->order('sort asc')
            ->select();
        $list = tree($list);
        $view = [
            'list' => $list
        ];
        View::assign($view);
        return View::fetch();
    }

    // 权限菜单显示或者隐藏
    public function status(){
        if (Request::isPost()) {
            $id = Request::param('id');
            $info = M::find($id);
            $info->status = $info['status'] == 1 ? 0 : 1;
            $info->save();
            return json(['error'=>0, 'msg'=>'修改成功']);
        }
    }

    // 设置权限排序
    public function sort(){
        if (Request::isPost()) {
            $id = Request::param('id');
            $sort = Request::param('sort');
            $info = M::find($id);
            $info->sort = $sort;
            $info->save();
            return json(['error'=>0, 'msg'=>'修改成功']);
        }
    }

    // 权限删除
    public function del(){
        $id = Request::param('id');
        if ($id) {
            M::destroy($id);
            return json(['error'=>0, 'msg'=>'删除成功']);
        }
    }

    // 权限批量删除
    public function SelectDel(){
        $id = Request::param('id');
        if ($id) {
            M::destroy($id);
            return json(['error'=>0, 'msg'=>'删除成功']);
        }
    }

    // 权限增加
    public function add(){
        if (Request::isPost()) {
            $data = Request::post();
            if (empty($data['title'])) {
                $this->error('分类名称不可为空');
            }
            if (empty($data['sort'])) {
                $this->error('排序不可为空');
            }
            if ($data['pid'] != 0) {
                if (M::where('id', $data['pid'])->value('pid') > 0) {
                    $this->error('只支持二级分类');
                }
            }
            if (M::create($data)) {
                $this->success('添加成功', 'Cate/index');
            } else {
                $this->error('添加失败');
            }
        } else {
            $list = Db::name('cate')
                ->order('sort ASC')
                ->select();
            $list = tree($list);
            $pid = Request::param('id') ? Request::param('id') : 0;
            $view =[
                'info'     => null,
                'pid'      => $pid,
                'ruleList' => $list
            ];
            View::assign($view);
            return View::fetch('');
        }
    }

    //修改
    public function edit(){
        if (request()->isPost()) {
            $data = Request::param();
            $where['id'] = $data['id'];
            if ($data['pid'] != 0) {
                if (M::where('id', $data['pid'])->value('pid') > 0) {
                    $this->error('只支持二级分类');
                }
            }
            M::update($data, $where);
            $this->success('修改成功!','Cate/index');
        } else {
            $list = Db::name('Cate')
                ->order('sort asc')
                ->select();
            $list = tree($list);
            $id = Request::param('id');
            $info = M::find($id);
            $view = [
                'info'     => $info,
                'ruleList' => $list,
            ];
            View::assign($view);
            return View::fetch('add');
        }
    }

}