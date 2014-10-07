<?php 
/**
* 
*/
class LoginService
{
	
	public function loginService1()
	{
		$m = M('user');
		$userList = $m->select();
		var_dump($userList);
		echo "string";
	}

	public function testService()
	{
		echo "Thi sis ";
	}
}

 ?>