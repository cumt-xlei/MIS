package cn.it.shop.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.it.shop.model.Role;
import cn.it.shop.model.User;
import cn.it.shop.model.UserRole;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
@Controller
@Scope("prototype")
public class UserAction extends BaseAction<User>{
	
	private static final long serialVersionUID = 1L;
	//查询满足条件的客户
	public String queryUser(){
		pageMap=new HashMap<String,Object>();
		System.out.println("page:"+page);
		List<User> userList=userService.queryUser("", page, rows);
		pageMap.put("rows", userList);
		return "jsonMap";
	}
	
	//L:
	private String returnpd;
    private int page;//分页页数
    private int rows;//分页行数
    private int userId;
    public String getReturnpd() {
        return returnpd;
    }
    public void setReturnpd(String returnpd) {
        this.returnpd = returnpd;
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
    public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	//分页必须
    public PrintWriter out()throws IOException{
        HttpServletResponse response=ServletActionContext.getResponse();  
        response.setContentType("text/html");  
        response.setContentType("text/plain; charset=utf-8");
        PrintWriter out= response.getWriter();
        return out;
    }
    //查询所有用户语句
    public String queryAllUser() throws IOException{
        returnpd="ok";
         JSONArray array =new JSONArray();
           List<User> list=new ArrayList<User>();
               list=userService.queryAllUser("",page,rows);        
           for(User user:list){
                JSONObject jo=new JSONObject();
                jo.put("id",user.getId());
                jo.put("LoginName", user.getLoginName());
                jo.put("Title", user.getTitle());
                array.add(jo);
           };
           String str="{\"total\":"+userService.count()+",\"rows\":"+array.toString()+"}";
            out().print(str);
            out().flush();
            out().close();
        return returnpd;
        
    }
	public String saveUser(){
		returnpd="ok";
		getModel().setLoginPassword("123");
		userService.save(getModel());
		return returnpd;
	}
	public String deleteUser(){
		returnpd="ok";
		System.out.println(getModel().getId());
		userService.delete(getModel().getId());
		return returnpd;
	}
	public String updateUser(){
		returnpd="ok";
		getModel().setLoginPassword("123");
		userService.update(getModel());
		return returnpd;
	}
	
	
	public String queryUserRole() throws IOException{
		returnpd="ok";
		JSONArray jsonArray = new JSONArray();
		
		List<Role> listRole = new ArrayList<Role>();
		List<UserRole> listUserRole = userRoleService.query();
		
		for (UserRole userRole : listUserRole) {
			if(getUserId() == userRole.getUserID())
				listRole.add(roleService.get(userRole.getRoleID()));
		}
		
		for (Role role : listRole) {
			JSONObject jsonOBJ = new JSONObject();
			jsonOBJ.put("id",role.getId());
			jsonOBJ.put("RoleName", role.getRoleName());
			jsonOBJ.put("RoleDesc", role.getRoleDesc());
			jsonArray.add(jsonOBJ);
		}
        String str="{\"total\":"+userRoleService.count()+",\"rows\":"+jsonArray.toString()+"}";
        out().print(str);
        out().flush();
        out().close();
		
		return returnpd;
	}	
	
}
