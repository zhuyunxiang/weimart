<?php 
/**
* Index Service
*/
class IndexService
{
	public $userDao;
	public $roleDao;
	public $firstMenuDao;
	public $secondMenuDao;
	public $msgDao;

	function __construct()
	{
		$this->userDao = D('User');
		$this->roleDao = D('Role');
		$this->firstMenuDao = D('Admin/FirstMenu');
		$this->secondMenuDao = D('Admin/SecondMenu');
		$this->msgDao = D('Admin/MsgList');
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

	public function getMenuList()
	{
		return $this->firstMenuDao->relation(true)->select();
	}

	public function getSecondMenuInfoById($id = null)
	{
		if ($id) {
			$where = array('menu_id'=>$id);
			return $this->secondMenuDao->where($where)->relation(true)->find();
		}
		return false;
	}

	public function addFirstMenu($data = null)
	{
		if ($data) {
			$menu_info = array('menu_name'=>$data['editMenuName'],'menu_key'=>md5(time()));
			return $this->firstMenuDao->add($menu_info);
		}
		return false;
	}

	public function addSecondMenu($data = null)
	{
		if ($data) {
			$menu_info = array('menu_first_id'=>$data['editMenuId'],'menu_name'=>$data['editMenuName'],'menu_key'=>md5(time()));
			return $this->secondMenuDao->add($menu_info);
		}
		return false;
	}

	public function editFirstMenu($data = null)
	{
		if ($data) {
			$menu_info = array('menu_id'=>$data['editMenuId'],'menu_name'=>$data['editMenuName']);
			return $this->firstMenuDao->save($menu_info);
		}
		return false;
	}

	public function editSecondMenu($data = null)
	{
		if ($data) {
			$menu_info = array('menu_id'=>$data['editMenuId'],'menu_name'=>$data['editMenuName']);
			return $this->secondMenuDao->save($menu_info);
		}
		return false;
	}

	public function removeFirstMenu($data = null)
	{
		if ($data) {
			$where = array('menu_id'=>$data['menu_id']);
			return $this->firstMenuDao->where($where)->delete();
		} 
		return false;
	}

	public function removeSecondMenu($data = null)
	{
		if ($data) {
			$where = array('menu_id'=>$data['menu_id']);
			return $this->secondMenuDao->where($where)->delete();
		} 
		return false;
	}

	public function saveTextMsg($data = null)
	{
		if ($data) {
			if (isset($data['msg_id'])) {
				$menu_info = array('menu_id'=>$data['menu_id'], 'menu_type'=>'text');
				$data = $this->msgDao->save($data);
				return array('data'=>$data, 'info'=>"文本信息修改成功！", 'status'=>1);
			} else {
				$data = $this->msgDao->add($data);
				return array('data'=>$data, 'info'=>"文本信息修改成功！", 'status'=>1);
			}
		}

		return array('data'=>false, 'info'=>"保存的内容不能为空！", 'status'=>0);
	}
}
 ?>