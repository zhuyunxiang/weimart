<?php 
/**
* Login
*/
class LoginAction extends Action
{
	/**
	* Show login page.
	*/
    public function home()
	{
		// A('Login','Service')->loginService1();
		$this->display('home');
	}

	/**
	* Handel login logic.
	*/
	public function do_login()
	{
		
	}

	public function test()
	{
		$this->display('test');
	}
}

 ?>