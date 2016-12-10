package cn.it.shop.action;

import cn.it.shop.model.PriList;
import cn.it.shop.model.Role;
import cn.it.shop.model.User;
import cn.it.shop.model.UserRole;

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
	private String newRoleName;
	private int page;//��ҳҳ��
	private int rows;//��ҳ����
	
	public String getNewRoleName() {
		return newRoleName;
	}
	public void setNewRoleName(String newRoleName) {
		this.newRoleName = newRoleName;
	}
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
	//��ѯ�����û����
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
		System.out.println("1");
		roleService.save(getModel());
		return returnpd;
	}
	public String deleteRole(){
		returnpd="ok";
		roleService.delete(getModel().getId());
		return returnpd;
	}
	public String updateRole(){
		returnpd="ok";
		roleService.update(getModel());
		return returnpd;
	}
	public String getRolePer() throws IOException{
		returnpd="ok";
	    User user=null;
	    user =(User) session.get("admin");
		JSONObject permision = new JSONObject();
		permision.put("add", 0);
		permision.put("delete", 0);
		permision.put("update", 0);
		List<PriList> priuserList = priListService.queryByPriId("user", user.getId());
        for(PriList p : priuserList ) {
            if(p.getToId() == 28)
            	permision.put("add", 1);
            else
            	permision.put("add", 0);
            if(p.getToId() == 29)
            	permision.put("delete", 1);
            else
            	permision.put("delete", 0);
            if(p.getToId() == 30)
            	permision.put("update", 1);
            else
            	permision.put("update", 0);
        }	
		List<UserRole> userRoleList  = userRoleService.queryByUserId(1);
		for (UserRole userRole : userRoleList) {
			List<PriList> priroleList = priListService.queryByPriId("role", userRole.getRoleID());
	        for(PriList p : priroleList ) {
	            if(p.getToId() == 28 || permision.getInt("add") == 1)
	            	permision.put("add", 1);
	            else
	            	permision.put("add", 0);
	            if(p.getToId() == 29 || permision.getInt("delete") == 1)
	            	permision.put("delete", 1);
	            else
	            	permision.put("delete", 0);
	            if(p.getToId() == 30 || permision.getInt("update") == 1)
	            	permision.put("update", 1);
	            else
	            	permision.put("update", 0);
	        }
		}
		out().print(permision.toString());
		out().flush();
		out().close();
		return returnpd;
	}
	
}
