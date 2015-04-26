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
}
 ?>