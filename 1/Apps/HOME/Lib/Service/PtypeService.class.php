<?php 
/**
* Ptype Service
* 商品类别
*/
import('@.Service.BaseService');
class PtypeService extends BaseService
{
	
	// 构造方法
	function __construct()
	{
		$this->pTypeDao = M('ptype');
	}

	// 根据数组生成树
	function getTree($data, $pid = 0, $key = 'type_id', $pKey = 'super_type_id', $childKey = 'nodes', $maxDepth = 0){  
	    static $depth = 0;  
	    $depth++;  
	    if (intval($maxDepth) <= 0)  
	    {  
	        $maxDepth = count($data) * count($data);  
	    }  
	    if ($depth > $maxDepth)  
	    {  
	        exit("error recursion:max recursion depth {$maxDepth}");  
	    }  
	    $tree = array();  
	    foreach ($data as $rk => $rv)  
	    {  
	        if ($rv[$pKey] == $pid)  
	        {  
	            $rv[$childKey] = $this->getTree($data, $rv[$key], $key, $pKey, $childKey, $maxDepth);  
	            $tree[] = $rv;  
	        }  
	    }  
	    return $tree;  
	}

	// 由树转成数组(由大到小)
	public function treeGetArr($data, $arr = array(), $depth = 0)
	{
		$depth++;
		foreach ($data as $rk => $rv) {
			if (count($rv['nodes']) > 0) {
				$arr = $this->treeGetArr($rv['nodes'], $arr, $depth);
			}

			// 生成多级下拉列表
			for ($i=1; $i <= $depth; $i++) { 
				if ($i == 2) {
					$rv['type_name'] = '|----'.$rv['type_name'];
				}
				if ($i > 1) {
					$rv['type_name'] = '	'.$rv['type_name'];
				}
			}
			$rv['depth'] = $depth;
			unset($rv['nodes']);
			array_unshift($arr, $rv);
		}
		return $arr;
	}

	// 获取所有有分级的分类数组
	public function getAllTypesInArr($condition = null)
	{
		$result = $this->getInfo('pTypeDao', $condition);

		if (count($result) > 1) {
			$result =  $this->getTree($result);

			return $this->treeGetArr($result);
		} else {
			return $result;
		}
	}

	// 获取所有商品分类
	public function getAllTypes($condition = null)
	{
		$result = $this->getInfo('pTypeDao', $condition);

		if (count($result) > 1) {
			return $this->getTree($result);
		} else {
			return $result;
		}
	}

	// 保存商品分类
	public function saveType($data = null)
	{
		if ($data) {
			$result = $this->saveInfo('pTypeDao', $data, $id = 'type_id');
			if ($result) {
				return array('data'=>$result, 'info'=>'数据保存成功!', 'status'=>1);
			} else {
				return array('data'=>$result, 'info'=>'数据保存失败!', 'status'=>0);
			}
		} else {
			return array('data'=>false, 'info'=>'数据为空!', 'status'=>0);
		}
	}

	// 删除商品分类
	public function removeType($data = null)
	{
		if ($data) {
			$result = $this->removeInfo('pTypeDao', $data['type_id'], $id = 'type_id');
			if ($result) {
				return array('data'=>$result, 'info'=>'数据删除成功!', 'status'=>1);
			}
			return array('data'=>$result, 'info'=>'数据删除失败!', 'status'=>0);
		}
		return array('data'=>false, 'info'=>'数据为空!', 'status'=>0);
	}
}
 ?>