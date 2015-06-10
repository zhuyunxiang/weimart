<?php 
/**
* User Action
* 用户信息
* 纯逻辑接口，对外公开
*/
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: X-Requested-With');

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

	// 修改密码
	public function save_password()
	{
		$info = $_POST;
		if (!empty($info)) {
			$result = A('User', 'Service')->savePassword($info);
			$this->ajaxReturn($result['data'], $result['info'], $result['status']);
		}
		$this->ajaxReturn(false, '未传递参数!', 0);
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
	// Ajax
	public function save_detail()
	{
		unset($_POST['user_pwd']);
		$result = A('User', 'Service')->doSaveDetail($_POST);
		if ($result) {
			$userInfo = A('User', 'Service')->getUserBasicInfoById($_POST['user_id']);
			$_SESSION['user'] = $userInfo[0];
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
                $info = $upload->getUploadFileInfo();
				echo $info[0]['savename'];
            }
		}
	}

	// 根据ID获取用户信息
	public function get_user_by_id()
	{
		$info = $_POST['user_id'];
		if (!empty($info)) {
			$result = A('User', 'Service')->getUserBasicInfoById($info);
			$this->ajaxReturn($result[0], "用户信息获取成功", 1);
		}
		$this->ajaxReturn(false, '未传递参数!', 0);
	}

	// 保存头像For APP
	public function save_head_img_for_app()
	{
		if (!empty($_FILES)) {
            import("@.ORG.UploadFile");
            $config=array(
                'savePath'=>'./Public/Uploads/head_img/',
            );
            $upload = new UploadFile($config);
            $upload->thumb=true;
            $upload->thumbMaxHeight=100;
            $upload->thumbMaxWidth=100;
            $upload->maxSize  = 10485760 ;// 设置附件上传大小
            if (!$upload->upload()) {
                $this->error($upload->getErrorMsg());
            } else {
                $info = $upload->getUploadFileInfo();
				$result = $info[0]['savename'];

				// 判断非SAE环境
				if(!defined('SAE_TMP_PATH')){
					echo "http://".$_SERVER['HTTP_HOST'].'/weimart/Public/Uploads/head_img/'.$result;
				} else {
					echo file_domain('Public').'/Uploads/head_img/'.$result;
				}
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
		A('Log', 'Service')->saveLog($_SESSION['user']['user_name'], '删除用户失败 [Delete User Error ID:'.$_POST['user_id'].']');
		$this->ajaxReturn($result, '用户删除失败!', 0);
	}

	// 根据用户id获取所有收藏的店铺
	public function get_collect_shops_by_user_id()
	{
		// 从客户端获取用户ID
		$user_id = $_POST['user_id'];
		// 调用Service进行数据层查询
		$result = A('User', 'Service')->getCollectShopsById($user_id);
		if ($result) {
			$this->ajaxReturn($result['data'], $result['info'], $result['status']);
		}
		$this->ajaxReturn(false, '内部错误!', 0);
	}

	// 根据用户id获取所有收藏的商品
	public function get_collect_products_by_user_id()
	{
		// 从客户端获取用户ID
		$user_id = $_POST['user_id'];
		// 调用Service进行数据层查询
		$result = A('User', 'Service')->getCollectProductsById($user_id);
		if ($result) {
			$this->ajaxReturn($result['data'], $result['info'], $result['status']);
		}
		$this->ajaxReturn(false, '内部错误!', 0);
	}

	// 保存收藏店铺信息
	public function save_user_collect_shop()
	{
		// 获取客户端传来的信息
		$collect_info = $_POST;
		// 调用Service进行数据存储
		$result = A('User', 'Service')->saveUserCollectShop($collect_info);
		if ($result) {
			$this->ajaxReturn($result['data'], $result['info'], $result['status']);
		}
		$this->ajaxReturn(false, '内部错误!', 0);
	}

	// 保存收藏商品信息
	public function save_user_collect_product()
	{
		// 获取客户端传来的信息
		$collect_info = $_POST;
		// 调用Service进行数据存储
		$result = A('User', 'Service')->saveUserCollectProduct($collect_info);
		if ($result) {
			$this->ajaxReturn($result['data'], $result['info'], $result['status']);
		}
		$this->ajaxReturn(false, '内部错误!', 0);
	}

	// 检查当前店铺是否已被收藏
	public function check_shop_is_collected()
	{
		// 获取客户端传来的信息
		$collect_info = $_POST;
		// 调用Service进行数据存储
		$result = A('User', 'Service')->checkShopIsCollected($collect_info);
		if ($result) {
			$this->ajaxReturn($result['data']?1:0, $result['info'], $result['status']);
		}
		$this->ajaxReturn(false, '内部错误!', 0);
	}

	// 检查当前商品是否已被收藏
	public function check_product_is_collected()
	{
		// 获取客户端传来的信息
		$collect_info = $_POST;
		// 调用Service进行数据存储
		$result = A('User', 'Service')->checkProductIsCollected($collect_info);
		if ($result) {
			$this->ajaxReturn($result['data']?1:0, $result['info'], $result['status']);
		}
		$this->ajaxReturn(false, '内部错误!', 0);
	}
}
 ?>