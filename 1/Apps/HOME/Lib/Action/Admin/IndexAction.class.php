<?php
// 本类由系统自动生成，仅供测试用途

class IndexAction extends Action {
    public function index()
    {
        $this->display('index');
    }

    public function do_login()
    {
       $postData = $_POST;
       $userMatch = A('AdminIndex', 'Service')->doLogin($postData);
       if ($userMatch) {
        $this->redirect('Index/home');
       }
    }

    public function home()
    {
      $this->display('home');
    }

    public function wechat_menu_conf()
    {
      $this->display('wechat_menu_conf');
    }

}