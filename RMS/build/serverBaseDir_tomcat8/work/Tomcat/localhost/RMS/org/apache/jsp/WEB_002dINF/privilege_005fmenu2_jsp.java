/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.23
 * Generated at: 2016-12-08 09:25:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class privilege_005fmenu2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>商品信息</title>\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"themes/default/easyui.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"themes/icon.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"themes/esui.css\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.easyui.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/esui.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("//查询所有用户\r\n");
      out.write("$(function user() {\r\n");
      out.write("\t//数据表格\r\n");
      out.write("\t$('#priuserdg').datagrid({\r\n");
      out.write("\t\turl : 'pri_user_queryAllUser.action',\r\n");
      out.write("\t\tpagination : true,\r\n");
      out.write("\t\trownumbers : true,\r\n");
      out.write("\t\tstriped : true,\r\n");
      out.write("\t\tsingleSelect : true,\r\n");
      out.write("\t\tcolumns : [ [ {\r\n");
      out.write("\t\t\tfield : 'id',\r\n");
      out.write("\t\t\ttitle : 'id',\r\n");
      out.write("\t\t\twidth : 180,\r\n");
      out.write("\t\t\talign : 'center'\r\n");
      out.write("\t\t}, {\r\n");
      out.write("\t\t\tfield : 'LoginName',\r\n");
      out.write("\t\t\ttitle : '用户名',\r\n");
      out.write("\t\t\twidth : 250,\r\n");
      out.write("\t\t\talign : 'center'\r\n");
      out.write("\t\t}, {\r\n");
      out.write("\t\t\tfield : 'Title',\r\n");
      out.write("\t\t\ttitle : '名称',\r\n");
      out.write("\t\t\twidth : 455,\r\n");
      out.write("\t\t\talign : 'center'\r\n");
      out.write("\t\t} ] ],\r\n");
      out.write("\t\t//数据表格  \r\n");
      out.write("\t\ttoolbar : [ {\r\n");
      out.write("\t\t\ttext : '查看角色',\r\n");
      out.write("\t\t\ticonCls : 'icon-users',\r\n");
      out.write("\t\t\thandler : function() {\r\n");
      out.write("\t\t\t\t//列表隐藏 显示\r\n");
      out.write("\t\t\t\t$('#pri-role-area').show();\r\n");
      out.write("\t\t\t\t$('#pri-user-area').hide()\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t} ],\r\n");
      out.write("\t\tonLoadSuccess : function() {\r\n");
      out.write("\t\t\t$('#pri-user-area').hide()\t\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("});\r\n");
      out.write("\t\r\n");
      out.write("\t//查询所有角色\r\n");
      out.write("\t$(function role() {\r\n");
      out.write("\t\t//数据表格\r\n");
      out.write("\t\t$('#priroledg').datagrid({\r\n");
      out.write("\t\t\turl : 'pri_role_queryAllRole.action',\r\n");
      out.write("\t\t\tpagination : true,\r\n");
      out.write("\t\t\trownumbers : true,\r\n");
      out.write("\t\t\tstriped : true,\r\n");
      out.write("\t\t\tsingleSelect : true,\r\n");
      out.write("\t\t\tcolumns : [ [ {\r\n");
      out.write("\t\t\t\tfield : 'id',\r\n");
      out.write("\t\t\t\ttitle : 'id',\r\n");
      out.write("\t\t\t\twidth : 180,\r\n");
      out.write("\t\t\t\talign : 'center'\r\n");
      out.write("\t\t\t}, {\r\n");
      out.write("\t\t\t\tfield : 'RoleName',\r\n");
      out.write("\t\t\t\ttitle : '角色名',\r\n");
      out.write("\t\t\t\twidth : 200,\r\n");
      out.write("\t\t\t\talign : 'center'\r\n");
      out.write("\t\t\t}, {\r\n");
      out.write("\t\t\t\tfield : 'RoleDesc',\r\n");
      out.write("\t\t\t\ttitle : '角色描述',\r\n");
      out.write("\t\t\t\twidth : 505,\r\n");
      out.write("\t\t\t\talign : 'center'\r\n");
      out.write("\t\t\t} ] ],\r\n");
      out.write("\t\t\t//数据表格  \r\n");
      out.write("\t\t\ttoolbar : [ {\r\n");
      out.write("\t\t\t\ttext : '查看用户',\r\n");
      out.write("\t\t\t\ticonCls : 'icon-users',\r\n");
      out.write("\t\t\t\thandler : function() {\r\n");
      out.write("\t\t\t\t\t//列表隐藏 显示\r\n");
      out.write("\t\t\t\t\t$('#pri-role-area').hide();\r\n");
      out.write("\t\t\t\t\t$('#pri-user-area').show()\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t} ]\r\n");
      out.write("\r\n");
      out.write("\t\t});\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\t//权限列表\r\n");
      out.write("\t$(document)\r\n");
      out.write("\t\t\t.ready(\r\n");
      out.write("\t\t\t\t\tfunction() {\r\n");
      out.write("\t\t\t\t\t\tvar parentId = 0;\r\n");
      out.write("\t\t\t\t\t\t$('#pritt')\r\n");
      out.write("\t\t\t\t\t\t\t\t.treegrid(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\turl : 'pri_pri_queryPrivilege.action?parentId='\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t+ parentId,\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\trownumbers : true,\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tselectOnCheck : true,\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tcheckbox : true,//定义在每一个节点前显示复选框\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tonlyLeafCheck : true,//定义是否仅在叶子节点前显示复选框\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tidField : 'id',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\ttreeField : 'PrivilegeOperation',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tonBeforeExpand : function(row) {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t//动态设置展开查询的url\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t$(this).treegrid('options').url = 'pri_pri_queryPrivilege.action?parentId='\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ row.id;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t},\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tcolumns : [ [ {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\ttitle : 'id',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tfield : 'id',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\twidth : 100\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t}, {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tfield : 'PrivilegeOperation',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\ttitle : '菜单-按钮',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\twidth : 400\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t}, {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tfield : 'RecordStatus',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\ttitle : '编码',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\twidth : 300\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t}, {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tfield : 'Icon',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\ttitle : '图标',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\twidth : 180\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t}, ] ],\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t//数据表格  \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\ttoolbar : [\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\ttext : '分配权限',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\ticonCls : 'icon-ok',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\thandler : function() {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar priMaster = \"role\";\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar priKey = $(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'#priroledg')\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.datagrid(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'getSelected');\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tif (priKey == null) {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar priMaster = \"user\";\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpriKey = $(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'#priuserdg')\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.datagrid(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'getSelected');\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tif (priKey == null) {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t$.messager\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.alert(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'提示',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'请选择一个用户或者角色才能赋予权限！',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'info');\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t} else {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar rows = $(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'#pritt')\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.treegrid(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'getChildren');\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar cgroup = new Array();\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tfor (var i = 0; i < rows.length; i++) {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tif (rows[i].checked == true) {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcgroup\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.push(rows[i].id);\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tif (cgroup.length == 0) {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t$.messager\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.alert(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'提示',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'您还没有选择任何权限哦！',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'info');\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t} else {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tconsole\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.log(priMaster\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ priKey.id);\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t//var postData =JSON.stringify(cgroup);  //把数组转换成json字符串\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t$\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.ajax({\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttype : \"POST\",\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\turl : \"pri_pri_savePrivilege.action\",\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdataType : \"json\",\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttraditional : true,\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdata : {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tarray : cgroup,\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpriMaster : priMaster,\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpriKey : priKey.id,\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t},\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsuccess : function(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstr) {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tconsole\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.log(str[0].successi\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ str[0].errori\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ str[0].returnpd);\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar successi = str[0].successi;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar updatei = str[0].updatei;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar errori = str[0].errori;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar returnpd = str[0].returnpd;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tif (returnpd == \"error\") {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t$.messager\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.alert(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'错误',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'分配权限出错！'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '已存在'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ errori\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '条权限',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'error',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tfunction() {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twindow.location\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.reload()\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t});\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t} else {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t//刷新当前tab \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t$.messager\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.alert(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'提示',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'分配权限成功！'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '新增'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ successi\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '条！'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '修改'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ updatei\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '条！'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '失败'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ errori\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '条!',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'info',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tfunction() {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twindow.location\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.reload()\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t},\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t'-',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\ttext : '禁用权限',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\ticonCls : 'icon-no',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\thandler : function() {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar priMaster = \"role\";\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar priKey = $(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'#priroledg')\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.datagrid(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'getSelected');\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tif (priKey == null) {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar priMaster = \"user\";\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpriKey = $(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'#priuserdg')\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.datagrid(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'getSelected');\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tif (priKey == null) {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t$.messager\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.alert(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'提示',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'请选择一个用户或者角色才能禁用权限！',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'info');\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t} else {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar rows = $(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'#pritt')\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.treegrid(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'getChildren');\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar cgroup = new Array();\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tfor (var i = 0; i < rows.length; i++) {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tif (rows[i].checked == true) {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcgroup\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.push(rows[i].id);\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tif (cgroup.length == 0) {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t$.messager\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.alert(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'提示',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'您还没有选择任何权限哦！',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'info');\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t} else {\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t//var postData =JSON.stringify(cgroup);  //把数组转换成json字符串\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t$.ajax({\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttype : \"POST\",\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\turl : \"pri_pri_updatePrivilege.action\",\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdataType : \"json\",\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttraditional : true,\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdata : {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tarray : cgroup,\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpriMaster : priMaster,\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpriKey : priKey.id,\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t},\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsuccess : function(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstr) {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar successi = str[0].successi;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar errori = str[0].errori;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar returnpd = str[0].returnpd;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tconsole\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.log(returnpd\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ successi\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ errori);\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tif (returnpd == \"error\") {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t$.messager\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.alert(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'错误',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'禁用权限出错！'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '禁用成功'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ successi\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '条！'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '失败'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ errori\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '条权限',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'error',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tfunction() {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twindow.location\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.reload()\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t} else {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t$.messager\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.alert(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'提示',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'禁用权限成功！'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '禁用成功'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ successi\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '条！'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '失败'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ errori\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ '条!',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'info',\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tfunction() {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twindow.location\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.reload()\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t} ]\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t\t});\r\n");
      out.write("\t\r\n");
      out.write("\t//隐藏按钮\r\n");
      out.write("\t$(document).ready(function(){\r\n");
      out.write("\t\t//后台页面ID\r\n");
      out.write("\t\tvar priPageId=8;\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t\t\ttype : \"POST\",\r\n");
      out.write("\t\t\turl : \"pri_pri_searchBtnPrivilege.action\",\r\n");
      out.write("\t\t\tdataType : \"json\",\r\n");
      out.write("\t\t\ttraditional : true,\r\n");
      out.write("\t\t\tdata : {\r\n");
      out.write("\t\t\t\tpriPageId : priPageId\r\n");
      out.write("\t\t\t},\r\n");
      out.write("\t\t\tsuccess : function(priId) {\r\n");
      out.write("\t\t\t\tvar viewUser= priId[0].viewUser\r\n");
      out.write("\t\t\t\tvar viewRole= priId[0].viewRole\r\n");
      out.write("\t\t\t\tvar permitPri= priId[0].permitPri\r\n");
      out.write("\t\t\t\tvar forbidPri= priId[0].forbidPri\r\n");
      out.write("\t\t\t\tconsole.log(viewUser+viewRole+permitPri+forbidPri);\r\n");
      out.write("\t\t\t\tif(viewUser==0){\r\n");
      out.write("\t\t\t\t\t$('div.datagrid-toolbar a').eq(0).hide()\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\tif(viewRole==0){\r\n");
      out.write("\t\t\t\t\t$('div.datagrid-toolbar a').eq(1).hide()\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\tif(permitPri==0){\r\n");
      out.write("\t\t\t\t\t$('div.datagrid-toolbar a').eq(2).hide()\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\tif(forbidPri==0){\r\n");
      out.write("\t\t\t\t\t$('div.datagrid-toolbar a').eq(3).hide()\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t//隐藏 \r\n");
      out.write("\t\t\r\n");
      out.write("\t});\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<!--1. 在整个页面创建布局面板-->\r\n");
      out.write("<body>\r\n");
      out.write("\t<!--表格-->\r\n");
      out.write("\t<div class=\"top-area\" id=\"pri-role-area\">\r\n");
      out.write("\t\t<p class=\"title\">角色</p>\r\n");
      out.write("\t\t<table id=\"priroledg\"></table>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"top-area\" id=\"pri-user-area\">\r\n");
      out.write("\t\t<p class=\"title\">用户</p>\r\n");
      out.write("\t\t<table id=\"priuserdg\"></table>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"btm-area\">\r\n");
      out.write("\t\t<p class=\"title\">权限控制</p>\r\n");
      out.write("\t\t<table id=\"pritt\"></table>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
