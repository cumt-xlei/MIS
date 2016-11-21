<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>商品类别</title>

    <link rel="stylesheet" type="text/css" href="themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="themes/icon.css"/>
    <link rel="stylesheet" type="text/css" href="themes/esui.css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/esui.js"></script>

    <script type="text/javascript">
    function submitAddType(){
		$('#addtypeff').form({
		    url:'addtype.action',
		    onSubmit: function () {
				 //表单验证
             return $("#addtypeff").form('validate')
            },
		    success:function(str){
		    	var result = eval('(' + str + ')');
		    	if(str != null){
		    		$.messager.alert('成功','添加成功','info');
		    	}
		    	else{
		    		$.messager.alert('失败','添加失败','info');
		    	}
		    	
		    }
		});
		// submit the form
		$('#addtypeff').submit();
}
    </script>
    </head>
<!--1. 在整个页面创建布局面板-->
<body>
   <div class="easyui-layout textc mgt" fit="true">
  	<center>
    <form class="" id="addtypeff" method="post" enctype="multipart/form-data">

    <div class="mgt">
	
    
 

    <div class="mgt">
		<label for="type">商品类别添加</label>
		<input class="easyui-validatebox" type="text" name="type" data-options="required:true" />
    </div>
    <div class="mgt">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="submitAddType()">提交</a>
     </div> 
   	</div>
   		
	</form> 
		
	</center>
	
</div> 
	

</body>
</html>