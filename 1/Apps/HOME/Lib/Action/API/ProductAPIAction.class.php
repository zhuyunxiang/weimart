<?php 
/**
* Product Action
* 商品信息
* 纯逻辑接口，对外公开
*/
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: X-Requested-With');
class ProductAPIAction extends Action
{
	// 保存商品图片
	public function save_product_img()
	{
		if (!empty($_FILES)) {
            import("@.ORG.UploadFile");
            $config=array(
                'allowExts'=>array('jpg','gif','png'),
                'savePath'=>'./Public/Uploads/product_img/',
                // 'saveRule'=>'time',
            );
            $upload = new UploadFile($config);
            $upload->thumb=true;
            $upload->thumbMaxHeight=100;
            $upload->thumbMaxWidth=100;
            if (!$upload->upload()) {
                $this->error($upload->getErrorMsg());
            } else {
                $info = $upload->getUploadFileInfo();
				echo $info[0]['savename'];
            }
		}
	}

	// 保存商品信息
	public function save_product_info()
	{
		if (isset($_SESSION['user'])) {
			// 获取商店信息
			$result = A('Product', 'Service')->saveProductInfo($_POST);
			if ($result) {
				A('Log', 'Service')->saveLog($_SESSION['user']['user_name'], '保存商品信息成功 [Save Product Success ID:'.$result['data'].']');
				$this->ajaxReturn($result['data'], $result['info'], $result['status']);
			}
			$this->ajaxReturn(false, '内部错误!', 0);
		}
	}

	// 根据店铺id获取店铺商品
	public function get_product_by_shop()
	{
		$result = A('Product', 'Service')->getProductByShop($_POST['shop_id']);
		if ($result) {
			$this->ajaxReturn($result['data'], $result['info'], $result['status']);
		}
		$this->ajaxReturn(false, '内部错误!', 0);
	}

	// 删除商品
	public function delete_product_info()
	{
		$result = A('Product', 'Service')->removeProductInfoById($_POST['product_id']);
		if ($result) {
			A('Log', 'Service')->saveLog($_SESSION['user']['user_name'], '删除商品信息成功 [Delete Product Success ID:'.$_POST['product_id'].']');
			$this->ajaxReturn($result, '用户删除成功!', 1);
		}
		A('Log', 'Service')->saveLog($_SESSION['user']['user_name'], '删除商品信息失败 [Delete Product Error ID:'.$_POST['product_id'].']');
		$this->ajaxReturn($result, '用户删除失败!', 0);
	}
}
 ?>