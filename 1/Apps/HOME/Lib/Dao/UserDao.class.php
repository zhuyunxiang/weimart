<?php 
/**
* User dao.
*/
import('@.Dao.BaseDao');
class UserDao extends BaseDao
{
	public static $tableName;

	// Construct function.
	function __construct()
	{
		$this->tableName = "User";
	}
}

 ?>