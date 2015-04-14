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
}
 ?>