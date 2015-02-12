<?php 
/**
* 
*/

class CacheDataUtil 
{
	// 
	public static function add($table,$array)
	{
		# code...
	}

	public static function save($table,$array)
	{
		$m = M($table);
		$m->save($array);
	}

	public static function delete()
	{
		# code...
	}

	public static function get($table,$condition)
	{
		$cache_signal = "cache_signal".$table;
		if ($condition) {
			foreach ($condition as $key => $value) {
				$cache_signal.=$key.$value;
			}
		}

		if (S($cache_signal)) {
			$array = S($cache_signal);
		}else{
			
			$m = M($table);
			$array = $m->where($condition)->select();
			S($cache_signal,$array,1);
		}
		return $array;
	}
}
 ?>