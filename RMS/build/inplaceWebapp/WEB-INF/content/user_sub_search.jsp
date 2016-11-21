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

 <!--查找用户-->
<div id="searchUserBack" class=" addUserLog" title="查找用户" collapsible="false" minimizable="false"
      maximizable="false" icon="icon-save" closed="true">
      <div class="easyui-layout" fit="true">
        <div region="center" class="logCenter" border="false" >
          <form id="addUserBack">
          <table cellpadding=8>
            <tr>
              <td>根据用户名搜索：</td>
              <td><input id="searchUname" name="searchUname" type="text" class="easyui-validatebox" required="true"/></td>
            </tr>
        </table>
        </form>
       </div>
       <div region="south" class="logSouth" border="false" > 
       <a id="btnEp" class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" onclick="submitSearch()"> 确定</a> 
       <a id="btnCancel" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)" onclick="searchCancel()">取消</a> </div>
     </div>
</div>   


</body>
</html>