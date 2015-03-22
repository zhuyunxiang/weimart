<?php
// 后台管理Action

class IndexAction extends Action {
  // 显示主页面
  public function index()
  {
      $this->display('index');
  }

  // 登陆
  public function do_login()
  {
     $postData = $_POST;
     $userMatch = A('Admin/Index', 'Service')->doLogin($postData);

     // 判断账户密码是否正确
     if ($userMatch) {
      unset($userMatch['user_pwd']);
      $_SESSION['user'] = $userMatch;
      $this->redirect('Index/home');
     }
  }

  public function home()
  {
    $this->display('home');
  }

  public function main()
  {
    $this->display('main');
  }

  // 显示自定义菜单设置页
  public function wechat_menu_conf()
  {
    $this->display('wechat_menu_conf');
  }

  // 显示公众账号设置页
  public function set_wechat_info()
  {
    $this->display('set_wechat_info');
  }

  // 显示自定义回复设置页
  public function custom_return_conf()
  {
    $this->display('custom_return_conf');
  }

  // 获取菜单列表
  public function get_menu_list()
  {
    $menuList = A('Admin/Index','Service')->getMenuList();
    $data = array('menuList'=>$menuList);

    if ($data) {
      $this->ajaxReturn($data, "数据获取成功", 1);
    } else {
      $this->ajaxReturn($data, "数据获取失败", 0);
    }
  }

  // 显示图文菜单编辑页面
  public function mulTuwen()
  {
    $this->display('mulTuwen');
  }

  // 保存菜单信息
  public function save_menu_info()
  {
    if ($_POST) {
      switch ($_POST['editMenuType']) {
        case 'addFirst':
          $result = A('Admin/Index', 'Service')->addFirstMenu($_POST);
          $info = "一级菜单添加成功";
          break;
        case 'addSecond':
          $result = A('Admin/Index', 'Service')->addSecondMenu($_POST);
          $info = "二级菜单添加成功";
          break;
        case 'editFirst':
          $result = A('Admin/Index', 'Service')->editFirstMenu($_POST);
          $info = "一级菜单修改成功";
          break;
        case 'editSecond':
          $result = A('Admin/Index', 'Service')->editSecondMenu($_POST);
          $info = "二级菜单修改成功";
          break;
        default:
          $result = false;
          break;
      }
      if ($result) {
        $this->ajaxReturn($result, $info, 1);
      } else {
        $this->ajaxReturn($result, "数据提交失败！", 0);
      }
    }
  }

  // 删除一级菜单
  public function remove_first_menu()
  {
    if ($_POST) {
      $result = A('Admin/Index', 'Service')->removeFirstMenu($_POST);
      if ($result) {
        $this->ajaxReturn($result, "一级菜单删除成功", 1);
      } else {
        $this->ajaxReturn($result, "一级菜单删除失败", 0);
      }
    } else {
      $this->ajaxReturn(false, "error", 0);
    }
  }

  // 删除二级菜单
  public function remove_second_menu()
  {
    if ($_POST) {
      $result = A('Admin/Index', 'Service')->removeSecondMenu($_POST);
      if ($result) {
        $this->ajaxReturn($result, "二级菜单删除成功", 1);
      } else {
        $this->ajaxReturn($result, "二级菜单删除失败", 0);
      }
    } else {
      $this->ajaxReturn(false, "error", 0);
    }
  }

  // 根据id获取二级菜单信息
  public function get_second_menu_info_by_id()
  {
    if (isset($_POST['s_id'])) {
      $result = A('Admin/Index', 'Service')->getSecondMenuInfoById($_POST['s_id']);
      if ($result) {
        $this->ajaxReturn($result, "数据获取成功", 1);
      } else {
        $this->ajaxReturn($result, "数据获取失败", 0);
      }
    } else {
      $this->ajaxReturn(false, "error", 0);
    }
  }

  // 获得公众账号信息
  public function get_wechat_info()
  {
    $result = A('Admin/Index', 'Service')->getWechatInfo();
    $this->ajaxReturn($result['data'], $result['info'], $result['status']);
  }

  // 通用保存方法 ===Base Function===
  function save_data($dataType = null)
  {
    if ($dataType != null && $_POST != null) {
      $result = A('Admin/Index', 'Service')->$dataType($_POST);
      $this->ajaxReturn($result['data'], $result['info'], $result['status']);
    } else {
      $this->ajaxReturn(false, "内部错误，请联系管理员", 0);
    }
  }

  // 保存文字信息
  public function save_text_msg()
  {
    $this->save_data("saveTextMsg");
  }

  // 保存菜单链接地址 
  public function save_url()
  {
    $this->save_data("saveURL");
  }

  // 保存公众账号信息
  public function save_wechat_info()
  {
    $this->save_data("saveWechatInfo");
  }
}