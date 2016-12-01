package cn.it.shop.action;

import cn.it.shop.model.Role;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class RoleAction  extends BaseAction<Role>{
	private String returnpd;
	private int page;//��ҳҳ��
	private int rows;//��ҳ����
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	//��ҳ����
	public PrintWriter out()throws IOException{
		HttpServletResponse response=ServletActionContext.getResponse();  
        response.setContentType("text/html");  
        response.setContentType("text/plain; charset=utf-8");
        PrintWriter out= response.getWriter();
        return out;
	}
	//��ѯ���н�ɫ���
	public String queryAllRole() throws IOException{
		returnpd="ok";
		 JSONArray array =new JSONArray();
		   List<Role> list=new ArrayList<Role>();
			   list=roleService.queryAllRole("",page,rows);		   
		   for(Role role:list){
			    JSONObject jo=new JSONObject();
			    jo.put("id",role.getId());
			    jo.put("RoleName", role.getRoleName());
			    jo.put("RoleDesc", role.getRoleDesc());
			    array.add(jo);
		   };
		   String str="{\"total\":"+roleService.count()+",\"rows\":"+array.toString()+"}";
			out().print(str);
			out().flush();
			out().close();
		return returnpd;
		
	}
	
	public String saveRole(){
		returnpd="ok";
		roleService.save(getModel());
		return returnpd;
	}
	public String deleteRole(){
		returnpd="ok";
		roleService.deleteRole(getModel().getRoleName());
		return returnpd;
	}
}
