<?php 
/**
* Login
*/
class LoginAction extends Action
{
	/**
	* Show login page.
	*/
    public function index()
	{
		$m = M('user');
		$userList = $m->select();
		var_dump($userList);
		echo "string";
	}

	/**
	* Handel login logic.
	*/
	public function do_login()
	{
		
	}
}

 ?>