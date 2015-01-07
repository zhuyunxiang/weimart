<?php 
/**
* Index Service
*/
class AdminIndexService
{
	public $userDao;
	public $roleDao;

	function __construct()
	{
		$this->userDao = D('User');
		$this->roleDao = D('Role');
	}

	public function doLogin($loginData = null)
	{
		if ($loginData) {
			$where = array('user_name'=>$loginData['user_name'], 'user_pwd'=>md5($loginData['user_pwd']));
			$userMatch = $this->userDao->where($where)->relation(true)->find();
			$allPermission = $this->roleDao->relation(true)->select();
			// dump($allPermission);
			return $userMatch;
		}
		return false;
	}
}
 ?>