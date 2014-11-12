<?php 
/**
* 
*/
class TestService
{
	
	public function test()
	{
		$user = array(
						'user_name'=>"guoxueying2223",
						'user_nick_name'=>"guo",
						'user_header_img'=>"123",
						'user_pwd'=>"123"
				);
		$user['roles'] = array(
							array(
								'role_name'=>"test1112"
								)
						);
		$a = A("User", "Dao");
		$condition = array('user_id'=>'252');
		dump($a->saveUser($user,$condition));

		dump($a->selectUser());
		// dump($a->addUser($user,'roles'));
	}
}
 ?>