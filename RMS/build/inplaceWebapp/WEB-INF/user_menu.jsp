<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>部门</title>
    <link rel="stylesheet" type="text/css" href="themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="themes/icon.css"/>
    <link rel="stylesheet" type="text/css" href="themes/esui.css"/>
<style type="text/css">
.null{margin:10px}
form{margin:10px 40px;}
form>label{display:block;}
form input{margin-left:40px;}
form input.first{margin-left:10px;}  
form input.second,form input.third{margin-left:25px;}
input[type="submit"],input[type="reset"]{width:70px; height:34px; font-size:20px; margin-top:10px;} 
</style>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/esui.js"></script>
<script type="text/javascript">
  
	 $(function(){
      $('#table').datagrid({
      url:'#',
      pagination:true,
      singleSelect:true,
      columns:[
      [{field:'use_id',title:'用户账号',width:150,align:'center'},
      {field:'use_name',title:'用户名',width:150,align:'center'},
      {field:'role_name',title:'角色名',width:150,align:'center'},
      {field:'sex',title:'性别',width:150,align:'center'},
      {field:'phone',title:'电话',width:150,align:'center'},
      {field:'address',title:'地址',width:200,align:'center'},
      {field:'other',title:'其它',width:150,align:'center'},
      ],[
          {field:'use_id'},
          {field:'use_name'},
          {field:'role_name'},
          {field:'sex'},
          {field:'phone'},
          {field:'address'},
          {field:'other'},
        ]
      ],
      toolbar: [{
        text:'保存',
      iconCls: 'icon-save',
      handler: function(){alert('save')}
    },'-',{
      text:'添加',
      iconCls: 'icon-add',
      handler: function(){
          $("#addPanel").panel("open");
      }
    },'-',{
      text:'删除',
      iconCls: 'icon-remove',
      handler: function(){}
    },'-',{
      text:'编辑',
      iconCls: 'icon-edit',
      handler: function(){
    	  $("#editPanel").panel({
    		  closed:false
    	  })
    	}
    }]
  });
});
	 

	 $(function(){
		 $("#search").searchbox({
			 prompt:'Please Input Value',
			 width:200
		 });
	 });
	 
	  
//操作面板    
	 $(function(){
		 $('#addPanel,#editPanel').panel({
			    width:350,
			    closable:true,
			    closed:true
			}); 
	   });
	 
	 $(function(){
		 $(".require").each(
				 function(i){
					  $(this).validatebox({    
		          required: true  
		        });
				});
	 })
	 
	 function checkForm(){
		 $("form.edit .require").each(function(i){
			if($(this).val=""){
				alert("请填写必要项");
				return false;
			}
			return true;
		 });
	 }
	 
	 $(function(){
		 
	 });
	 
	 

</script>  
<body>
 
<div id="search"></div> 
<div class="null"></div>
<table id="table"></table>

<div class="easyui-panel" id="addPanel" title="新增用户" style="width:400px">
<form class="form add">
    <label for="user_id">用户账号：<input class="require first" name="user_id" type="text" /></label>
    <label for="user_name">用户名：<input class="require second" name="user_name" type="text" /></label>
    <label for="role_name">角色名：<input class="require third" name="role_name" type="text" /></label>
    <label for="sex">性别：<input class="require" name="sex" type="text" /></label>
    <label for="phone">电话：<input class="require" name="phone" type="text" /></label>
    <label for="address">地址：<input class="require" name="address" type="text" /></label>
    <label for="other">其它：<input class="require" name="other" type="text" /></label>
   <input type="submit" value="提交" />
   <input type="reset" value="清除" />
</form>
</div>

<div class="easyui-panel" id="editPanel" title="编辑用户资料" style="width:400px">
<form class="form edit"  onsubmit="return checkForm();" >
	  <label for="user_id">用户账号：<input class="require first" name="user_id" type="text" /></label>
	  <label for="user_name">用户名：<input class="require second" name="user_name" type="text" /></label>
	  <label for="role_name">角色名：<input class="require third" name="role_name" type="text" /></label>
	  <label for="sex">性别：<input class="require" name="sex" type="text" /></label>
	  <label for="phone">电话：<input class="require" name="phone" type="text" /></label>
	  <label for="address">地址：<input class="require" name="address" type="text" /></label>
	  <label for="other">其它：<input class="require" name="other" type="text" /></label>
	  <input type="submit" value="提交"/>
	  <input type="reset" value="清除" />
</form>
</div>

</body>
</html>