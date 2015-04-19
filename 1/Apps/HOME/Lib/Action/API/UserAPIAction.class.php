<?php 
/**
* User Action
* 用户信息
* 纯逻辑接口，对外公开
*/
class UserAPIAction extends Action
{
	// 检查邮箱是否已注册
	// Ajax
	public function check_email()
	{
		$user_email = $_POST['email'];
		$userInfo = A('User', 'Service')->getUserByEmail($user_email);
		if ($userInfo) {
			$this->ajaxReturn(false, '该邮箱已注册!', 0);
		}
		$this->ajaxReturn(true, '该邮箱可以注册!', 1);
	}

	// 检查用户名是否已注册
	// Ajax
	public function check_username()
	{
		$username = $_POST['username'];
		$userInfo = A('User', 'Service')->getUserBasicInfoByName($username);
		if ($userInfo) {
			$this->ajaxReturn(false, '该用户名已注册!', 0);
		}
		$this->ajaxReturn(true, '该用户名可以注册!', 1);
	}

	// 完成注册
	// Ajax
	public function do_register()
	{
		$result = A('User', 'Service')->doRegister($_POST);
		if ($result) {
			$this->ajaxReturn($result['data'], $result['info'], $result['status']);
		}
		$this->ajaxReturn(false, '内部错误!', 0);
	}

	// 验证登陆信息
	// Ajax
	public function check_login()
	{
		if ($userInfo = $_SESSION['user']) {
			$this->ajaxReturn($userInfo, '已经登陆!', 1);
		}
		$this->ajaxReturn(false, '对不起,你还没有登陆!', 0);
	}

	// 退出登陆
	// Ajax
	public function do_logout()
	{
		if ($_SESSION['user']) {
			unset($_SESSION['user']);
			$this->ajaxReturn(false, '退出登陆成功!', 1);
		}
		$this->ajaxReturn(false, '对不起,你还没有登陆!', 0);
	}

	// 登陆
	// Ajax
	public function do_login()
	{
		$result = A('User', 'Service')->doLogin($_POST);
		if ($result) {
			$this->ajaxReturn($result['data'], $result['info'], $result['status']);
		}
		$this->ajaxReturn(false, '内部错误!', 0);
	}

	// 保存详细信息
	public function save_detail()
	{
		$result = A('User', 'Service')->doSaveDetail($_POST);
		if ($result) {
			$this->ajaxReturn($result['data'], $result['info'], $result['status']);
		}
		$this->ajaxReturn(false, '内部错误!', 0);
	}

	// 保存头像
	public function save_head_img()
	{
		if (!empty($_FILES)) {
            import("@.ORG.UploadFile");
            $config=array(
                'allowExts'=>array('jpg','gif','png'),
                'savePath'=>'./Public/Uploads/head_img/',
                // 'saveRule'=>'time',
            );
            $upload = new UploadFile($config);
            $upload->thumb=true;
            $upload->thumbMaxHeight=100;
            $upload->thumbMaxWidth=100;
            if (!$upload->upload()) {
                $this->error($upload->getErrorMsg());
            } else {
            	$id = $_POST['now_id'];
                $info = $upload->getUploadFileInfo();
				echo $info[0]['savename'];
            }
		}
	}

	// 获取所有用户信息
	// (需加验证)
	public function get_user_list()
	{
		$result = A('User', 'Service')->getAllUserList();
		if ($result) {
			$this->ajaxReturn($result['data'], $result['info'], $result['status']);
		}
		$this->ajaxReturn(false, '内部错误!', 0);
	}

	// 删除用户信息
	// (需加验证)
	public function remove_user()
	{
		$result = A('User', 'Service')->removeUserBasicInfoById($_POST['user_id']);
		if ($result) {
			A('Log', 'Service')->saveLog($_SESSION['user']['user_name'], '删除用户成功 [Delete User Success ID:'.$_POST['user_id'].']');
			$this->ajaxReturn($result, '用户删除成功!', 1);
		}
		A('Log', 'Service')->saveLog($_SESSION['user']['user_name'], '删除用户失败 [Delete User Success ID:'.$_POST['user_id'].']');
		$this->ajaxReturn($result, '用户删除失败!', 0);
	}
}
 ?>