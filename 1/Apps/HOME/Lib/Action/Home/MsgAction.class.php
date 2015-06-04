<?php 
/**
* 
*/
import('@.ORG.Ucpaas');
class MsgAction extends Action
{
	
	public function send(){
        //初始化必填
        $options['accountsid']='70887fa54bfd2ac92c788f8bf45f1647'; //填写自己的
        $options['token']='028ccb2ab02d29d7b925dfd3103bef81'; //填写自己的

		// $options['accountsid'] = '74418023809392'; //填写自己的
  //       $options['token'] = 'a6daeaca';

        //初始化 $options必填
        $ucpass = new Ucpaas($options);
                 
        //随机生成6位验证码
        srand((double)microtime()*1000000);//create a random number feed.
        $ychar="0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z";
        $list=explode(",",$ychar);
        for($i=0;$i<6;$i++){
         	$randnum=rand(0,35); // 10+26;
         	$authnum.=$list[$randnum];
        }

        //短信验证码（模板短信）,默认以65个汉字（同65个英文）为一条（可容纳字数受您应用名称占用字符影响），超过长度短信平台将会自动分割为多条发送。分割后的多条短信将按照具体占用条数计费。
        $appId = " d98cb4875cd744188af83d717eba363b";  //填写自己的
        // $to = $_POST['to'];
        $to= "18862152242";
        $templateId = "1";
        $param=$authnum;

        $arr=$ucpass->templateSMS($appId,$to,$templateId,$param);
        dump($arr);
        if (substr($arr,21,6) == 000000) {
             //如果成功就，这里只是测试样式，可根据自己的需求进行调节
            echo "短信验证码已发送成功，请注意查收短信";
             
        } else {
             //如果不成功
            echo "短信验证码发送失败，请联系客服";    
        }
         
    }
}
 ?>