<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品信息</title>

<link rel="stylesheet" type="text/css" href="themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="themes/icon.css" />
<link rel="stylesheet" type="text/css" href="themes/esui.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/esui.js"></script>

<script type="text/javascript">
	//添加权限
    $(function (){
    	$('#pri_type1').combobox({
    		label: '请选择一级菜单：',                
			labelPosition: 'top',
    	    url:'pri_pri_queryPrivilege.action?parentId=0',    
    	    valueField:'id',    
    	    textField:'PrivilegeOperation' ,
    	    onSelect:function(rec){
    	    	var parentId=rec.id;
    	    	console.log(parentId);
    	    	$('#pri_type2').combobox({
    	    		label: '请选择二级菜单：',                
    				labelPosition: 'top',
    	    	    url:'pri_pri_queryPrivilege.action?parentId='+parentId,    
    	    	    valueField:'id',    
    	    	    textField:'PrivilegeOperation',
    	    	    onSelect:function(recer){   	    	    	
    	    	    	var parentId=recer.id;
    	    	    	document.getElementById('pri_input5').value=parentId;
    	    	    	console.log(parentId);
    	    	    	document.getElementById("pri_input_area").style.display="block";
    	    	    	$('#pri_input1').textbox({
    	    				label: '权限名：',                
    	    				labelPosition: 'top',				    
    	    			    required:true,
    	    			    missingMessage:'此输入框不能为空！'      
    	    			});
    	    	    	$('#pri_input2').textbox({
    	    				label: '编码：',                
    	    				labelPosition: 'top',				    
    	    			    required:true,
    	    			    missingMessage:'此输入框不能为空！'      
    	    			});
    	    	    	$('#pri_input3').textbox({
    	    				label: '菜单名字：',                
    	    				labelPosition: 'top',				    
    	    				prompt:'菜单必须，按钮非必须'
    	    			});
    	    	    	$('#pri_input4').textbox({
    	    				label: '菜单URL：',                
    	    				labelPosition: 'top',
    	    				prompt:'菜单必须，按钮非必须'
    	    			});
    	    	    	$('#pri_btn').linkbutton({    
    	    	    	    iconCls: 'icon-ok'   
    	    	    	}); 
    	    	    }
    	    	});  
    	    	
    	    }
    	});
    	  
    });
	
    function submitForm(){
    	var privilegeOperation = document.getElementById('pri_input1').value;
    	var recordStatus = document.getElementById('pri_input2').value;
    	var title = document.getElementById('pri_input3').value;
    	var url = document.getElementById('pri_input4').value;
    	var parentID = document.getElementById('pri_input5').value;
    	$.post("pri_pri_saveNewPrivilege.action",{
        		pprivilegeOperation :privilegeOperation,
    			precordStatus:recordStatus,
    			ptitle:title,
    			purl:url,
    			parentId:parentID,},					
					function(returnpd){
						// 这里是请求发送成功后的回调函数。
						if(returnpd != "\"\"1\"\""){
							$.messager.alert('成功','添加成功','info',function(){	
								window.location.reload()
							});
						}
						else{
							$.messager.alert('成功','添加成功','error',function(){
								window.location.reload()
							});
						}
					},"text")
		
    }
	
</script>
</head>
<!--1. 在整个页面创建布局面板-->
<body>
	<!--表格-->
	<div class="top-area2">
        <div class="center">       
        <input id="pri_type1">
        </div>
        <div class="center">   
        <input id="pri_type2" style="display:none">                
        </div>                      
		<div id="pri_input_area" class="center" style="display:none">
            <p>输入详细信息</p>
            <form>
            <div class="form">
                <input id="pri_input1" class="easyui-validatebox" type="text" name="privilegeOperation"/>
            </div>
            <div class="form">
                <input id="pri_input2" class="easyui-validatebox" type="text" name="recordStatus"/>
            </div>
             <div class="form">
                <input id="pri_input3" class="easyui-validatebox" type="text" name="title"/>
            </div>
             <div class="form">
                <input id="pri_input4" class="easyui-validatebox" type="text" name="url"/>
                <input  type="hidden" id="pri_input5" class="easyui-validatebox" type="text" name="parentId"/>
            </div>
            <a id="pri_btn" href="#" onclick="submitForm()">确认</a>
            </form>
        </div>
	</div>
</body>
</html>