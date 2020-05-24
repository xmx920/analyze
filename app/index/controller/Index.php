<?php
/**
 *  首页控制器
 */

namespace app\index\controller;

use app\common\model\Ad;
use app\common\model\Cate;
use app\common\model\Debris;
use app\common\model\Product;
use think\captcha\facade\Captcha;
use think\facade\Db;
use think\facade\Request;
use think\facade\View;

class Index extends Base
{
    // 首页
    public function index()
    {
        //后台开启手机端的时候PC自动跳转到mobile
//        if ($this->system['mobile'] == '1' && $this->appName == 'index') {
//            if (Request::isMobile()) {
//                return redirect('mobile/index/index');
//            }
//        }
        //banner
        $banner = Ad::getAdByType(Ad::INDEX_BANNER);
        //product
        $pwhere[] = ['cate_id', '>', 0];
        $product = Product::getProduct($pwhere, 8);

        //客户见证
        $prove = Ad::getAdByType(Ad::PROVE);
        //about
        $about = Debris::where('name', 'profile')->field('content,image')->find()->toArray();
        $about['content'] = mb_substr(html2text($about['content']), 0, 120, "utf-8");
        //support
        $map[] = ['type', '=', 6];
        $support1 = Product::getProduct($map, 4)->toArray();
        if ($support1) {
            $support1[0]['content'] = html2text($about['content']);
        }

        $map2[] = ['type', '=', 7];
        $support2 = Product::getProduct($map2, 4)->toArray();
        if ($support2) {
            $support2[0]['content'] = html2text($about['content']);
        }
        $view = [
            'banner' => $banner,
            'product' => $product,
            'prove' => $prove,
            'about' => $about,
            'support1' => $support1,
            'support2' => $support2,
        ];

        View::assign($view);
        return View::fetch();
    }

    //产品列表
    public function product()
    {
        //banner
        $banner = Ad::getAdByType(Ad::PRODUCT_BANNER);

        //左侧产品分类
        self::getProductCate();

        //根据分类id获取产品列表
        $cate_id = Request::param('cate_id', 0);
        $type = 0;
        $where[] = ['p.type', '=', $type];
        $p = '产品中心';
        if ($cate_id) {
            $cate = Cate::where('id', $cate_id)->find();
            $id_where = [(int)$cate_id];
            if ($cate['pid'] == 0) {  //一级分类
                $ids = Cate::where('pid', $cate_id)->where('status', 1)->select();
                if ($ids) {
                    $ids = $ids->toArray();
                    $ids = array_column($ids, 'id');
                    $id_where = array_merge($ids, $id_where);
                }
                $where[] = ['p.cate_id', 'in', $id_where];
            } else {
                $where[] = ['p.cate_id', '=', $cate_id];
            }
            $p = $cate['title'];
        }
        $list = Product::getList($where, 9);

        //常见问题
        $map[] = ['type', '=', 6];
        $question = Product::getProduct($map, 8);

        //位置
        $p1 = get_type_by_name($type);
        $view = [
            'banner' => $banner,
            'question' => $question,
            'p' => $p,
            'pageSize' => page_size_index(9, $list->total()),
            'page' => $list->render(),
            'list' => $list,
        ];
        View::assign($view);
        return View::fetch();
    }

    //产品详情
    public function pinfo()
    {
        //banner
        $banner = Ad::getAdByType(Ad::PRODUCT_BANNER);

        //左侧产品分类
        self::getProductCate();

        //根据id获取产品详情
        $id = Request::param('id');
        $info = Product::where('id', $id)->find();
        //常见问题
        $map[] = ['type', '=', 6];
        $question = Product::getProduct($map, 8);

        //位置
        $p = Cate::where('id', $info->cate_id)->value('title');
        //人气产品
        $hmap[] = ['type', '=', 0];
        $hot = Product::getProduct($hmap, 8, ['hits' => 'desc']);

        self::preNext($id);
        $view = [
            'banner' => $banner,
            'question' => $question,
            'p' => $p,
            'info' => $info,
            'hot' => $hot,
        ];
        View::assign($view);
        return View::fetch();
    }

    //应用列表
    public function apply()
    {
        //banner
        $banner = Ad::getAdByType(Ad::APPLY_BANNER);

        //根据分类获取产品列表
        $type = Request::param('type') ?? 5;  //默认加工样品
        $where[] = ['p.type', '=', $type];

        $list = Product::getList($where, 18);

        //常见问题
        $map[] = ['type', '=', 6];
        $question = Product::getProduct($map, 8);
        //人气产品
        $hmap[] = ['type', '=', 0];
        $hot = Product::getProduct($hmap, 4, ['hits' => 'desc']);
        //位置
        $p = get_type_by_name($type);

        $view = [
            'banner' => $banner,
            'question' => $question,
            'p' => $p,
            'hot' => $hot,
            'type' => $type,
            'pageSize' => page_size_index(9, $list->total()),
            'page' => $list->render(),
            'list' => $list,
        ];
        View::assign($view);
        return View::fetch();
    }

    //应用详情
    public function ainfo()
    {
        //banner
        $banner = Ad::getAdByType(Ad::APPLY_BANNER);

        //根据id获取产品详情
        $id = Request::param('id');
        $info = Product::where('id', $id)->find();
        //常见问题
        $map[] = ['type', '=', 6];
        $question = Product::getProduct($map, 8);

        //位置
        $p = get_type_by_name($info->type);

        //人气产品
        $hmap[] = ['type', '=', 0];
        $hot = Product::getProduct($hmap, 8, ['hits' => 'desc']);

        //上一条和下一条
        self::preNext($id, $info->type);

        //相关推荐
        $tmap[] = ['type', '=', $info->type];
        $tj = Product::getProduct($tmap, 3, ['hits' => 'desc']);
        $view = [
            'banner' => $banner,
            'question' => $question,
            'p' => $p,
            'info' => $info,
            'hot' => $hot,
            'type' => $info->type,
            'tj' => $tj
        ];
        View::assign($view);
        return View::fetch();
    }

    //技术支持
    public function support()
    {
        //banner
        $banner = Ad::getAdByType(Ad::SUPPORT_BANNER);

        //根据分类获取产品列表
        $type = Request::param('type') ?? 6;  //默认常见问题
        $where[] = ['p.type', '=', $type];
        $list = Product::getList($where, 11);
        if ($list) {
            foreach ($list as &$item) {
                $item['content'] = mb_substr(html2text($item['content']), 0, 127, "utf-8");
            }
        }
        //位置
        $p = get_type_by_name($type);

        //人气产品
        $hmap[] = ['type', '=', 0];
        $hot = Product::getProduct($hmap, 4, ['hits' => 'desc']);

        $view = [
            'banner' => $banner,
            'p' => $p,
            'pageSize' => page_size_index(9, $list->total()),
            'page' => $list->render(),
            'list' => $list,
            'hot' => $hot,
            'type' => $type
        ];
        View::assign($view);
        return View::fetch();
    }

    //技术支持详情
    public function sinfo()
    {
        //banner
        $banner = Ad::getAdByType(Ad::SUPPORT_BANNER);

        //根据id获取详情
        $id = Request::param('id');
        $info = Product::where('id', $id)->find();

        $p = get_type_by_name($info->type);

        //人气产品
        $hmap[] = ['type', '=', 0];
        $hot = Product::getProduct($hmap, 8, ['hits' => 'desc']);

        //上一条和下一条
        self::preNext($id, $info->type);

        //相关推荐
        $tmap[] = ['type', '=', $info->type];
        $tj = Product::getProduct($tmap, 10, ['hits' => 'desc']);

        $view = [
            'banner' => $banner,
            'p' => $p,
            'info' => $info,
            'hot' => $hot,
            'type' => $info->type,
            'tj' => $tj
        ];
        View::assign($view);
        return View::fetch();
    }

    //关于我们
    public function about()
    {
        //banner
        $banner = Ad::getAdByType(Ad::ABOUT_BANNER);
        $id = Request::param('id') ?? 1;  //默认公司简介

        $content = Debris::where('id', $id)->value('content');

        //位置
        if ($id == 1) {
            $p = '公司简介';
        } elseif ($id == 2) {
            $p = '企业文化';
        } elseif ($id == 3) {
            $p = '生产车间';
        } else {
            $p = '';
        }
        $view = [
            'banner' => $banner,
            'content' => $content,
            'type' => $id,
            'p' => $p
        ];
        View::assign($view);
        return View::fetch();
    }

    //联系我们
    public function contact()
    {
        //banner
        $banner = Ad::getAdByType(Ad::ABOUT_BANNER);
        $id = Request::param('id') ?? 4;  //默认联系我们

        $content = Debris::where('id', $id)->value('content');

        if ($id == 4) {
            $p = '联系我们';
        } elseif ($id == 5) {
            $p = '销售网络';
        } else {
            $p = '';
        }
        $view = [
            'banner' => $banner,
            'content' => $content,
            'type' => $id,
            'p' => $p
        ];
        View::assign($view);
        return View::fetch();
    }

    //产品分类列表
    private static function getProductCate()
    {
        //左侧产品分类
        $cate_list = Db::name('Cate')
            ->where('status', 1)
            ->order('sort asc')
            ->select();
        $cate_list = list_to_tree($cate_list->toArray());
        $view = [
            'cate_list' => $cate_list
        ];
        View::assign($view);
    }

    private static function preNext($id, $type = 0)
    {
        //上一条和下一条
        $premap[] = ['type', '=', $type];
        $premap[] = ['id', '<', $id];
        $premap[] = ['status', '=', 1];
        $pre = Product::where($premap)->limit(1)->find();
//        dump($info->type);die;
        $nextmap[] = ['type', '=', 0];
        $nextmap[] = ['id', '>', $id];
        $nextmap[] = ['status', '=', 1];
        $next = Product::where($nextmap)->limit(1)->find();
        $view = [
            'pre' => $pre,
            'next' => $next,
        ];
        View::assign($view);
    }


}
