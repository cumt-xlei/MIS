<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>EasyUI Demo</title>

    <link rel="stylesheet" type="text/css" href="themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="themes/icon.css"/>
    <link rel="stylesheet" type="text/css" href="themes/esui.css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/esui.js"></script>

    <script type="text/javascript">
  
 	
    </script>
    </head>

<!--1. 在整个页面创建布局面板-->
<body>

  <!--添加用户-->
<div id="adduser" class="addUserLog" title="添加用户" collapsible="false" minimizable="false"
      maximizable="false" icon="icon-save" closed="true">
      <div class="easyui-layout" fit="true">
        <div region="center" class="logCenter" border="false" >
          <form id="addUserBack">
          <table cellpadding=8>
            <tr>
              <td>用户名：</td>
              <td><input id="addUname" name="addUname" type="text" class="easyui-validatebox" required="true" /></td>
            </tr>
            <tr>
              <td>密码：</td>
              <td><input id="addPsw" name="addPsw" type="Password" class="easyui-validatebox" required="true" /></td>
            </tr>
            <tr>
              <td>邮箱：</td>
              <td><input id="addEmail" name="addEmail" type="text" class="txt01" /></td>
            </tr>
        </table>
        </form>
       </div>
       <div region="south" class="logSouth" border="false" > 
       <a id="btnEp" class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" onclick="submitAdd()"> 确定</a> 
       <a id="btnCancel" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)" onclick="sbmCancel()">取消</a> </div>
     </div>
</div> 


</body>
</html>