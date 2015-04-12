<?php 
/**
* 
*/
class MediaReturnAction extends Action
{
	public function index()
	{
		if ($_GET['msg_id']) {
			$this->assign('msg_id', $_GET['msg_id']);
			$this->display('index');
		} else {
			$this->error('访问错误！');
		}
	}

	// Ajax 数据交互
	// 获取当前Key的所有Meddia Item
	public function get_media_items()
	{
		$id = $_POST['msg_id'];
		$data = A('Admin/MediaReturn', 'Service')->getItemsByMsgId($id);
		$this->ajaxReturn($data, '数据获取成功', 1);
	}

	public function save_media_items()
	{
		$data = $_POST;
		$data = A('Admin/MediaReturn', 'Service')->saveMediaItems($data);
		$this->ajaxReturn($data, '数据获取成功', 1);
	}

	// 图片上传处理
	public function save_img()
	{
		if (!empty($_FILES)) {
            import("@.ORG.UploadFile");
            $config=array(
                'allowExts'=>array('jpg','gif','png'),
                'savePath'=>'./Public/Uploads/media_img/',
                // 'saveRule'=>'time',
            );
            $upload = new UploadFile($config);
            $upload->thumb=true;
            $upload->thumbMaxHeight=100;
            $upload->thumbMaxWidth=100;
            if (!$upload->upload()) {
                $this->error($upload->getErrorMsg());
            } else {
            	$id = $_POST['now_id'];
                $info = $upload->getUploadFileInfo();
				echo $info[0]['savename'];
            }
		}
	}

}
 ?>