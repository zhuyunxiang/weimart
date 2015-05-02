<?php 
/**
* User Service
* 用户信息
*/
import('@.Service.BaseService');
class UserService extends BaseService
{
	
	function __construct()
	{
		$this->userDao = M('user');
		$this->userRelationDao = D('User');
	}

	// 根据用户名获取用户基本信息
	public function getUserBasicInfoByName($name = null)
	{
		if ($name) {
			$condition = array('user_name'=>$name, 'user_is_deleted'=>0);
			return $this->getInfo('userDao',$condition);
		}
		return false;
	}

	// 根据用户ID获取用户基本信息
	public function getUserBasicInfoById($user_id = null)
	{
		if ($user_id) {
			$condition = array('user_id'=>$user_id, 'user_is_deleted'=>0);
			return $this->getInfo('userDao',$condition);
		}
		return false;
	}

	// 获取所有用户基本信息（不分页）
	public function getUserBasicInfo()
	{
		$condition = array('user_is_deleted'=>0);
		return $this->getInfo('userDao',$condition);
	}

	// 获取所有用户关联信息
	public function getUserRelationInfo()
	{
		$condition = array('user_is_deleted'=>0);
		return $this->userRelationDao->where($condition)->relation(true)->select();
	}

	// 根据用户名获取当前用户的所有关联数据
	public function getUserRelationInfoByName($name = null)
	{
		if ($name) {
			$condition = array('user_name'=>$name, 'user_is_deleted'=>0);
			return $this->userRelationDao->where($condition)->relation(true)->select();
		}
		return false;
	}

	// 根据用户ID获取当前用户的所有关联数据
	public function getUserRelationInfoById($user_id = null)
	{
		if ($user_id) {
			$condition = array('user_id'=>$user_id, 'user_is_deleted'=>0);
			return $this->userRelationDao->where($condition)->relation(true)->select();
		}
		return false;
	}

	// 根据用户邮箱获取当前用户基本数据
	public function getUserByEmail($user_email = null)
	{
		if ($user_email) {
			$condition = array('user_email'=>$user_email, 'user_is_deleted'=>0);
			return $this->userDao->where($condition)->select();
		}
		return false;
	}

	// 修改用户基本信息
	public function saveUserBasicInfo($data = null)
	{
		if ($data) {
			return $this->saveInfo('userDao', $data, 'user_id');
		}
		return false;
	}

	// 删除用户基本信息(软删除)
	public function removeUserBasicInfoById($user_id = null)
	{
		if ($user_id) {
			$data = array('user_id'=>$user_id, 'user_is_deleted'=>1);
			return $this->saveInfo('userDao', $data, 'user_id');
		}
		return false;
	}

	// 删除用户基本信息(真删除)
	public function removeUserBasicInfoByIdTruly($user_id = null)
	{
		if ($user_id) {
			return $this->removeInfo('userDao', $user_id, 'user_id');
		}
		return false;
	}

	// 注册
	// Ajax
	public function doRegister($data = null)
	{
		if ($data) {
			$validate = array(
			    array('user_name','','用户名已经存在!',0,'unique',1),
			    array('user_email','','该邮箱已经注册!',0,'unique',1),
			 );
			$this->userRelationDao-> setProperty("_validate",$validate);
			$user_info = $this->userRelationDao->create($data);
			$result = $this->userRelationDao->add();
			if (!$result){
				// 打LOG
				A('Log', 'Service')->saveLog('xxx','用户注册失败 [User Register Error] Detail:'.$this->userRelationDao->getError());
				return array('info'=>$this->userRelationDao->getError(), 'data'=>false, 'status'=>0);
			}else{
				$user_info['user_id'] = $result;
				$_SESSION['user'] = $user_info;
				// 打LOG
				A('Log', 'Service')->saveLog($user_info['user_name'], '用户注册成功 [User Register Success]');
				return array('info'=>'数据添加成功!', 'data'=>$result, 'status'=>1);
			}
		}
		return array('info'=>'输入的数据为空', 'data'=>false, 'status'=>0);
	}

	// 保存详细信息
	// Ajax
	public function doSaveDetail($data = null)
	{
		if ($data) {
			$user_info = $this->userRelationDao->create($data);
			$result = $this->userRelationDao->save();
			if (!$result){
				// 打LOG
				A('Log', 'Service')->saveLog('xxx','用户录入详细信息失败 [User Save Detail Error] Detail:'.$this->userRelationDao->getError());
				return array('info'=>$this->userRelationDao->getError(), 'data'=>$data, 'status'=>0);
			}else{
				// 打LOG
				A('Log', 'Service')->saveLog($_SESSION['user']['user_name'], '用户录入详细信息成功 [User Save Detail Success]');
				return array('info'=>'数据保存成功!', 'data'=>$user_info, 'status'=>1);
			}
		}
		return array('info'=>'输入的数据为空', 'data'=>false, 'status'=>0);
	}

	// 登陆
	// Ajax
	public function doLogin($data = null)
	{
		if ($data) {
			$condition = array('user_name'=>$data['user_name'], 'user_pwd'=>md5($data['user_pwd']), 'user_is_deleted'=>0);
			$result = $this->userRelationDao->where($condition)->relation(true)->find();
			
			if (!$result){
				// 打LOG
				A('Log', 'Service')->saveLog('xxx','用户登陆失败 [User Login Error]');
				return array('info'=>'用户名或密码错误!', 'data'=>false, 'status'=>0);
			}else{
				$_SESSION['user'] = $result;
				// 打LOG
				A('Log', 'Service')->saveLog($result['user_name'], '用户登陆成功 [User Login Success]');
				return array('info'=>'用户登陆成功!', 'data'=>$result, 'status'=>1);
			}
		}
		return array('info'=>'输入的数据为空', 'data'=>false, 'status'=>0);
	}

	// 获取所有用户列表
	// Ajax
	public function getAllUserList()
	{
		$condition = array('user_is_deleted'=>0);
		$result = $this->getInfo('userDao',$condition);
		if ($result) {
			return array('info'=>'数据获取成功!', 'data'=>$result, 'status'=>1);
		}
		return array('info'=>'输入的数据为空!', 'data'=>false, 'status'=>0);
	}

}
 ?>