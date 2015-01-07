<?php 
/**
* Basic dao class;
*/
abstract class BaseDao
{
	public function func($table, $type, $data = null, $rel = null, $condition = null)
	{
		if ($rel == '' || $rel == null || $rel == false) {
			if($condition == '' || $condition == null) {
				$m = M($table);
				if ($type == 'select')
					return $m->$type();
				else
					return $m->$type($data);
			} else {
				$m = M($table);
				if ($type == 'delete' || $type == 'select') {
					return $m->where($condition)->$type();
				} else {
					return $m->where($condition)->$type($data);
				}
			}
		} else {
			if($condition == null) {
				$m = D($table);
				if ($type == 'select')
					$result = $m->relation(true)->$type();
				else
					$result = $m->relation(true)->$type($data);
				return $result;
			} else {
				$m = D($table);
				if ($type == 'select')
					$result = $m->relation(true)->where($condition)->$type();
				else
					$result = $m->relation(true)->where($condition)->$type($data);
				return $result;
			}
		}
	}

	// Add data to database.
	public function add($data, $condition = null, $rel = null)
	{
		return $this->func($this->tableName, 'add', $data, $rel, $condition);
	}

	// Save data to database.
	public function save($data, $condition = null, $rel = null)
	{
		return $this->func($this->tableName, 'save', $data, $rel, $condition);
	}

	// Remove data from database.
	public function remove($condition, $rel = null)
	{
		return $this->func($this->tableName, 'delete', '', $rel, $condition);
	}

	// Search data from database.
	public function select($condition = null, $rel = null)
	{
		return $this->func($this->tableName, 'select', '', $rel, $condition);
	}
	
}

 ?>