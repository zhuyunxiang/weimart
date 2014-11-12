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

	// Add user to database.
	public function addUser($user, $condition = null, $rel = null)
	{
		return BaseDao::func($this->tableName, 'add', $user, $rel, $condition);
	}

	// Save User to database.
	public function saveUser($user, $condition = null, $rel = null)
	{
		return BaseDao::func($this->tableName, 'save', $user, $rel, $condition);
	}

	// Remove User from database.
	public function removeUser($condition, $rel = null)
	{
		return BaseDao::func($this->tableName, 'delete', '', $rel, $condition);
	}

	// Search User from database.
	public function selectUser($condition = null, $rel = null)
	{
		return BaseDao::func($this->tableName, 'select', '', $rel, $condition);
	}
}

 ?>