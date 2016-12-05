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
public class UserAction extends BaseAction<User> {

	private static final long serialVersionUID = 1L;
	private int parentId;

	// ��¼
	public String login() {
		// ���е�¼���ж�
		model = userService.login(model);
		if (model == null) {
			System.out.println("ʧ��");
			session.put("adminremind", "��¼ʧ�ܣ������µ�¼");
			return "alogin";
		} else {
			// ��¼�ɹ����ȴ洢��session�У�Ȼ�󷵻ص���Ӧ��ҳ��
			System.out.println("�ɹ�");
			session.put("admin", model);
			session.put("logout", "�˳���¼");
			session.put("active_admin", "��ǰ�û��� " + model.getLoginName());
			session.put("adminremind", "���Ѿ���¼��");
			return "admin";
		}
	}

	public String logout() {
		session.remove("admin");
		session.remove("active_admin");
		session.remove("logout");
		session.remove("adminremind");
		return "alogin";
	}

	// �õ��û��ܿ������������İ�ť
	public String getUserMenu() throws IOException {
		returnpd = "ok";
		JSONArray array = new JSONArray();
		array = userService.getUserMenu(parentId, (User) session.get("admin"));
		String str = array.toString();
		out().print(str);
		out().flush();
		out().close();
		return returnpd;
	}

	// ��ѯ���������Ŀͻ�
	public String queryUser() {
		pageMap = new HashMap<String, Object>();
		System.out.println("page:" + page);
		List<User> userList = userService.queryUser("", page, rows);
		pageMap.put("rows", userList);
		return "jsonMap";
	}

	// L:
	private String returnpd;
	private int page;// ��ҳҳ��
	private int rows;// ��ҳ����
	private int usId;
	private int roId;

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

	public int getUsId() {
		return usId;
	}
	public void setUsId(int usId) {
		this.usId = usId;
	}

	public int getRoId() {
		return roId;
	}
	public void setRoId(int roId) {
		this.roId = roId;
	}
	// ��ҳ����
	public PrintWriter out() throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html");
		response.setContentType("text/plain; charset=utf-8");
		PrintWriter out = response.getWriter();
		return out;
	}

	// ��ѯ�����û�����
	public String queryAllUser() throws IOException {
		returnpd = "ok";
		JSONArray array = new JSONArray();
		List<User> list = new ArrayList<User>();
		list = userService.queryAllUser("", page, rows);
		for (User user : list) {
			JSONObject jo = new JSONObject();
			jo.put("id", user.getId());
			jo.put("LoginName", user.getLoginName());
			jo.put("Title", user.getTitle());
			array.add(jo);
		}
		;
		String str = "{\"total\":" + userService.count() + ",\"rows\":" + array.toString() + "}";
		out().print(str);
		out().flush();
		out().close();
		return returnpd;

	}

	public String saveUser() {
		returnpd = "ok";
		getModel().setLoginPassword("123");
		userService.save(getModel());
		return returnpd;
	}

	public String deleteUser() {
		returnpd = "ok";
		userService.delete(getModel().getId());
		List<UserRole> listUserRole = userRoleService.query();

		for (UserRole userRole : listUserRole) {
			if (getModel().getId() == userRole.getUserID())
				userRoleService.delete(userRole.getId());
		}
		return returnpd;
	}

	public String updateUser() {
		returnpd = "ok";
		getModel().setLoginPassword("123");
		userService.update(getModel());
		return returnpd;
	}

	public String queryUserRole() throws IOException {
		System.out.print(usId);
		returnpd = "ok";
		JSONArray jsonArray = new JSONArray();

		List<Role> listRole = new ArrayList<Role>();
		List<UserRole> listUserRole = userRoleService.query();

		for (UserRole userRole : listUserRole) {
			if (getUsId() == userRole.getUserID())
				listRole.add(roleService.get(userRole.getRoleID()));
		}

		for (Role role : listRole) {
			JSONObject jsonOBJ = new JSONObject();
			jsonOBJ.put("id", role.getId());
			jsonOBJ.put("RoleName", role.getRoleName());
			jsonOBJ.put("RoleDesc", role.getRoleDesc());
			jsonArray.add(jsonOBJ);
		}
		String str = "{\"total\":" + userRoleService.count() + ",\"rows\":" + jsonArray.toString() + "}";
		out().print(str);
		out().flush();
		out().close();

		return returnpd;
	}
	public String saveRole(){
		returnpd = "ok";
		UserRole userRole = new UserRole();
		userRole.setRoleID(getRoId());
		userRole.setUserID(getUsId());
		userRoleService.save(userRole);
		return returnpd;		
	}
	public String deleteRole(){
		returnpd = "ok";
		List<UserRole> listUserRole = userRoleService.query();
		int iUrId = 0;
		for (UserRole userRole : listUserRole) {
			if (getUsId() == userRole.getUserID() && getRoId() == userRole.getRoleID())
				iUrId = userRole.getId();
		};
		System.out.println(iUrId+"sssssss");
		userRoleService.delete(iUrId);
		return returnpd;		
	}
	
	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

}
