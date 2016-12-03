package cn.it.shop.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.it.shop.model.User;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
@Controller
@Scope("prototype")
public class UserAction extends BaseAction<User>{
	
	private static final long serialVersionUID = 1L;
	private int parentId;
	public String login(){
		//进行登录的判断
		model=userService.login(model);
		if(model==null){
			System.out.println("失败");
			session.put("adminremind", "登录失败，请重新登录");
			return "alogin";
		}else{
			//登录成功，先存储到session中，然后返回到相应的页面
			System.out.println("成功");
			session.put("admin", model);
			session.put("logout", "退出登录");
			session.put("active_admin","当前用户： "+ model.getLoginName());
			session.put("adminremind", "您已经登录！");
			return "admin";
		}
	}
	public String logout(){
		session.remove("admin");
		session.remove("active_admin");
		session.remove("logout");
		session.remove("adminremind");
		return "alogin";
	}
	//得到用户能看到的最左侧的按钮
	public String getUserMenu() throws IOException{
		returnpd = "ok";
		JSONArray array = new JSONArray();
		array = userService.getUserMenu(parentId, (User) session.get("admin"));
		String str = array.toString();
		out().print(str);
		out().flush();
		out().close();
		return returnpd;
	}
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
    
    public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
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
	
}
