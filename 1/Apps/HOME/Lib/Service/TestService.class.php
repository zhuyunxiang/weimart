<?php 
/**
* 
*/
class TestService
{
	
	public function test()
	{
		// $user = array(
		// 				'user_name'=>"guoxueying22234",
		// 				'user_nick_name'=>"guo",
		// 				'user_header_img'=>"123",
		// 				'user_pwd'=>"123"
		// 		);
		// $user['roles'] = array(
		// 					array(
		// 						'role_name'=>"test1112"
		// 						)
		// 				);
		// $a = A("Shop", "Dao");
		// $condition = array('user_id'=>'256');
		// // dump($a->removeUser($condition));

		// dump($a->select());
		// // dump($a->addUser($user,'roles'));

		$a = D('Admin/FirstMenu');
		// $a = new Model('Admin://MenuFirst');
		$data = $a->relation(true)->select();
		dump($data);
	}
}
 ?>