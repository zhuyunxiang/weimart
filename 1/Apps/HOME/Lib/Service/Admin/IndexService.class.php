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
	public $wechatInfoDao;

	function __construct()
	{
		$this->userDao = D('User');
		$this->roleDao = D('Role');
		$this->firstMenuDao = D('Admin/FirstMenu');
		$this->secondMenuDao = D('Admin/SecondMenu');
		$this->msgDao = D('Admin/MsgList');
		$this->wechatInfoDao = D('Admin/WechatInfo');
	}

	public function doLogin($loginData = null)
	{
		if ($loginData) {
			$where = array('user_name'=>$loginData['user_name'], 'user_pwd'=>md5($loginData['user_pwd']));
			$userMatch = $this->userDao->where($where)->relation(true)->find();
			$allPermission = $this->roleDao->relation(true)->select();
			if ($userMatch) {
				$_SESSION['user'] = $userMatch;
				$_SESSION['all_permission'] = $allPermission;
			}
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

	public function getWechatInfo()
	{
		if (isset($_SESSION['user'])) {
	      	$condition = array('user_id'=>$_SESSION['user']['user_id']);
	      	$data = $this->wechatInfoDao->where($condition)->find();
			return array('data'=>$data, 'info'=>"信息获取成功", 'status'=>1);
	    }
	    return array('data'=>false, 'info'=>"还未登陆", 'status'=>0);
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

	// 保存文字消息
	public function saveTextMsg($data = null)
	{
		if ($data) {
			// 设置menu类型为文字
			$menu_info = array(
				'menu_id'=>$data['menu_id'],
				'menu_type'=>'text'
			);

			if ($data['menu_type'] == 'first') {
				$this->firstMenuDao->save($menu_info);
			} else {
				$this->secondMenuDao->save($menu_info);
			}

			unset($data['menu_type']);
			unset($data['menu_id']);

			if (isset($data['msg_id'])) {
				$data = $this->msgDao->save($data);
				return array('data'=>$data, 'info'=>"文本信息修改成功", 'status'=>1);
			} else {
				$data = $this->msgDao->add($data);
				return array('data'=>$data, 'info'=>"文本信息添加成功", 'status'=>1);
			}
		}

		return array('data'=>false, 'info'=>"保存的内容不能为空", 'status'=>0);
	}

	// 保存图文消息
	public function saveMediaMsg($data = null)
	{
		if ($data) {
			// 设置menu类型为文字
			$menu_info = array(
				'menu_id'=>$data['menu_id'],
				'menu_type'=>'media'
			);

			if ($data['menu_type'] == 'first') {
				$this->firstMenuDao->save($menu_info);
			} else {
				$this->secondMenuDao->save($menu_info);
			}

			unset($data['menu_type']);
			unset($data['menu_id']);
			$data['msg_type'] = 'media';

			if (isset($data['msg_id'])) {
				// $data = $this->msgDao->save($data);

				return array('data'=>$data['msg_id'], 'info'=>"图文信息msg-id获取成功", 'status'=>1);
			} else {
				$data = $this->msgDao->add($data);
				return array('data'=>$data, 'info'=>"图文信息添加成功", 'status'=>1);
			}
		}

		return array('data'=>false, 'info'=>"保存的内容不能为空", 'status'=>0);
	}

	// 保存链接地址
	public function saveURL($data = null)
	{
		if ($data) {
			if (isset($data['menu_type'])) {
				$menu_info = array(
					'menu_id'=>$data['menu_id'], 
					'menu_type'=>'url', 
					'menu_url'=>$data['tempURL']
				);
				// 当前要设置的是一级菜单
				if ($data['menu_type'] == 'first') {
					$data = $this->firstMenuDao->save($menu_info);
				} else {
					$data = $this->secondMenuDao->save($menu_info);
				}

				return array('data'=>$data, 'info'=>"链接地址保存成功！", 'status'=>1);
			}
		}

		return array('data'=>$data, 'info'=>"保存的内容不能为空", 'status'=>0);
	}

	public function saveWechatInfo($data = null)
	{
		if ($data && $_SESSION['user']) {
			$data['user_id'] = $_SESSION['user']['user_id'];
			if (isset($data['id'])) {
				$data = $this->wechatInfoDao->save($data);
				return array('data'=>$data, 'info'=>"微信信息修改成功", 'status'=>1);
			} else {
				$data = $this->wechatInfoDao->add($data);
				return array('data'=>$data, 'info'=>"微信信息添加成功", 'status'=>1);
			}
		}

		return array('data'=>false, 'info'=>"请先登陆", 'status'=>0);
	}
}
 ?>