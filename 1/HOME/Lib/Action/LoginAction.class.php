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
		A('Login','Service')->loginService1();
	}

	/**
	* Handel login logic.
	*/
	public function do_login()
	{
		
	}
}

 ?>