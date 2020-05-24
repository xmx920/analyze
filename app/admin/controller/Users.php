<?php
/**
 * | 会员列表控制器
 */
namespace app\admin\controller;

use app\common\model\UsersType;
use app\common\model\Users as M;

use think\facade\Request;
use think\facade\View;

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Users extends Base
{
    protected $validate = 'Users';

    // 列表
    public function index(){
        //全局查询条件
        $where = [];
        $keyword = Request::param('keyword');
        if (!empty($keyword)) {
            $where[] = ['email|mobile', 'like', '%'.$keyword.'%'];
        }
        $typeId  = Request::param('type_id');
        if (!empty($typeId)) {
            $where[] = ['type_id', '=', $typeId];
        }
        $dateran = Request::param('dateran');
        if (!empty($dateran)) {
            $getDateran = get_dateran($dateran);
            $where[] = ['create_time', 'between', $getDateran];
        }

        //获取列表
        $list = M::getList($where,$this->pageSize,['id'=>'desc']);
        //获取用户组列表
        $UsersType = UsersType::select();

        $view = [
            'keyword'  => $keyword,
            'typeId'   => $typeId,
            'dateran'  => $dateran,
            'usersType'=> $UsersType,
            'pageSize' => page_size($this->pageSize, $list->total()),
            'page'     => $list->render(),
            'list'     => $list,
            'empty'    => empty_list(11),
        ];
        View::assign($view);
        return View::fetch();
    }

    // 添加
    public function add(){
        $usersType = UsersType::where('status','=',1)
            ->select();
        if (!count($usersType)) {
            $this->error('请先添加会员组');
        }
        $view = [
            'usersType' => $usersType,
            'info'   => null
        ];
        View::assign($view);
        return View::fetch();
    }

    // 添加保存
    public function addPost(){
        if (Request::isPost()) {
            $data = Request::except(['file'], 'post');
            $result = $this->validate($data,$this->validate);
            if (true !== $result) {
                // 验证失败 输出错误信息
                $this->error($result);
            } else {
                if (empty($data['password'])) {
                    $this->error('请填写密码');
                }
                $data['last_login_time'] = time();
                $data['create_ip']       = $data['last_login_ip'] = Request::ip();
                $data['password']        = md5($data['password']);
                $result =  M::addPost($data);
                if ($result['error']) {
                    $this->error($result['msg']);
                } else {
                    $this->success($result['msg'],'index');
                }
            }
        }
    }

    // 修改
    public function edit(){
        $id = Request::param('id');
        $info = M::edit($id);
        $usersType = UsersType::where('status',1)
            ->select();
        $view = [
            'info'   => $info,
            'usersType' => $usersType,
        ];
        View::assign($view);
        return View::fetch('add');

    }

    // 修改保存
    public function editPost(){
        if (Request::isPost()) {
            $data = Request::except(['file'], 'post');
            $result = $this->validate($data,$this->validate);
            if (true !== $result) {
                // 验证失败 输出错误信息
                $this->error($result);
            } else {
                if ($data['password']) {
                    $data['password'] = md5($data['password']);
                } else {
                    unset($data['password']);
                }
                $result = M::editPost($data);
                if ($result['error']) {
                    $this->error($result['msg']);
                } else {
                    $this->success($result['msg'],'index');
                }
            }
        }
    }

    // 删除
    public function del(){
        if (Request::isPost()) {
            $id = Request::param('id');
            return M::del($id);
        }
    }

    // 批量删除
    public function selectDel(){
        if (Request::isPost()) {
            $id = Request::param('id');
            return M::selectDel($id);
        }
    }

    // 状态
    public function state(){
        if (Request::isPost()) {
            $id = Request::param('id');
            return M::state($id);
        }
    }

    // 下载
    public function download(){
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $sheet
            ->setCellValue('A1','ID')
            ->setCellValue('B1','邮箱账号')
            ->setCellValue('C1','性别')
            ->setCellValue('D1','注册时间')
            ->setCellValue('E1','注册IP')
            ->setCellValue('F1','最后登录时间')
            ->setCellValue('G1','最后登录IP')
            ->setCellValue('H1','QQ')
            ->setCellValue('I1','手机号')
            ->setCellValue('J1','是否认证手机号')
            ->setCellValue('K1','是否认证邮箱')
            ->setCellValue('L1','用户组')
            ->setCellValue('M1','状态')
        ;
        /*--------------开始从数据库提取信息插入Excel表中------------------*/
        //调取列表
        //全局查询条件
        $where = [];
        $keyword = Request::param('keyword');
        if (!empty($keyword)) {
            $where[] = ['email|mobile', 'like', '%'.$keyword.'%'];
        }
        $typeId  = Request::param('type_id');
        if (!empty($typeId)) {
            $where[] = ['type_id', '=', $typeId];
        }
        $dateran = Request::param('dateran');
        if (!empty($dateran)) {
            $getDateran = get_dateran($dateran);
            $where[]=['create_time', 'between', $getDateran];
        }

        //获取列表
        $list = M::getDownList($where, ['id' => 'desc']);
        foreach ($list as $k => $v) {
            $v['sex']              = $v['sex']=='1'              ? '男'    : '女';
            $v['mobile_validated'] = $v['mobile_validated']=='1' ? '已认证' : '未认证';
            $v['email_validated']  = $v['email_validated']=='1'  ? '已认证' : '未认证';
            $v['status']           = $v['status']=='1'           ? '正常'   : '禁用';
            $v['last_login_time']  = date("Y-m-d H:i",$v['last_login_time']);
            $sheet
                ->setCellValue('A'.($k+2),$v['id'])
                ->setCellValue('B'.($k+2),$v['email'])
                ->setCellValue('C'.($k+2),$v['sex'])
                ->setCellValue('D'.($k+2),$v['create_time'])
                ->setCellValue('E'.($k+2),$v['create_ip'])
                ->setCellValue('F'.($k+2),$v['last_login_time'])
                ->setCellValue('G'.($k+2),$v['last_login_ip'])
                ->setCellValue('H'.($k+2),$v['qq'])
                ->setCellValue('I'.($k+2),$v['mobile'])
                ->setCellValue('J'.($k+2),$v['mobile_validated'])
                ->setCellValue('K'.($k+2),$v['email_validated'])
                ->setCellValue('L'.($k+2),$v['type_name'])
                ->setCellValue('M'.($k+2),$v['status'])
            ;
        }

        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="'.'用户列表'.'.xlsx"');
        header('Cache-Control: max-age=0');
        $writer = new Xlsx($spreadsheet);
        $writer->save('php://output');
    }

}
