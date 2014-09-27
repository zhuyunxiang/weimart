<?php 
/**
* 
*/
class LoginAction extends Action
{
    function index()
	{
		$m = M('user');
		$userList = $m->select();
		var_dump($userList);
		echo "string";
	}
}

 ?>