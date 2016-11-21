<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>商品信息</title>

    <link rel="stylesheet" type="text/css" href="themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="themes/icon.css"/>
    <link rel="stylesheet" type="text/css" href="themes/esui.css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/esui.js"></script>

    <script type="text/javascript">
    	function submitAddGood(){
    		$('#addgoodff').form({
    		    url:'addgood.action',
    		    onSubmit: function () {
  				 //表单验证
                 return $("#addgoodff").form('validate')
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
    		$('#addgoodff').submit();
    }
    	
    </script>
    </head>

<body>

 <!--上传-->

  <div class="easyui-layout textc mgt" fit="true">
  	<div region="center textc" >
    <form class="goodcenter" id="addgoodff" method="post" enctype="multipart/form-data">
    <div class="fl">
    <div class="mgt">
		<label for="file1">展示图片：</label>
		<input class="easyui-validatebox" type="file" name="file1" data-options="required:true" />
    </div>
    <div class="mgt">
		<label for="file1">详情多图1：</label>
		<input class="easyui-validatebox" type="file" name="file1" data-options="required:true" />
    </div>
     <div class="mgt">
		<label for="file1">详情多图2：</label>
		<input class="easyui-validatebox" type="file" name="file1" data-options="required:true" />
    </div>
     <div class="mgt">
		<label for="file1">详情多图3：</label>
		<input class="easyui-validatebox" type="file" name="file1" data-options="required:true" />
    </div>
     <div class="mgt">
		<label for="file1">详情多图4：</label>
		<input class="easyui-validatebox" type="file" name="file1" data-options="required:true" />
    </div>
     <div class="mgt">
		<label for="file1">详情多图5：</label>
		<input class="easyui-validatebox" type="file" name="file1" data-options="required:true" />
    </div>
    
    </div>
    
    <div class="fl mgl">
    
    <div class="mgt">
		<label for="gname">商品名：</label>
		<input class="easyui-validatebox" type="text" name="gname" data-options="required:true" />
    </div>
    <div class="mgt">
		<label for="quantity">数&nbsp;量：</label>
		<input class="easyui-validatebox" type="text" name="quantity" data-options="required:true" />
    </div>
    <div class="mgt">
		<label for="price">价&nbsp;格：</label>
		<input class="easyui-validatebox" type="text" name="price" data-options="required:true" />
    </div>
    <div class="mgt">
		<label for="descrip">描&nbsp;述：</label>
		<input class="easyui-validatebox" type="text" name="descrip" data-options="required:true" />
    </div>
      <div class="mgt">
		<label for="type">类&nbsp;别：</label>
		<input class="easyui-validatebox" type="text" name="type" data-options="required:true" />
    </div>
    <div class="mgt">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="submitAddGood()">提交</a>
	</div>
      
   	</div>
   		
	</form> 
		
	</div>
	
</div> 
       	
</body>
</html>