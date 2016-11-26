package cn.it.shop.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import cn.it.shop.model.Privilege;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class PrivilegeAction extends BaseAction<Privilege>{
	private String returnpd;
	private int parentId;

	public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
	public String getReturnpd() {
		return returnpd;
	}
	public void setReturnpd(String returnpd) {
		this.returnpd = returnpd;
	}
	//Êä³ö
		public PrintWriter out()throws IOException{
			HttpServletResponse response=ServletActionContext.getResponse();  
	        response.setContentType("text/html");  
	        response.setContentType("text/plain; charset=utf-8");
	        PrintWriter out= response.getWriter();
	        return out;
		}
	public String queryAllPrivilege() throws IOException{
		returnpd="ok";
		JSONArray array =new JSONArray();
		   List<Privilege> list=new ArrayList<Privilege>();
		   String hql="";
			   list=privilegeService.queryAllPrivilege();		   
		   for(Privilege privilege:list){
			    JSONObject jo=new JSONObject();
			    jo.put("id", privilege.getId());
			    jo.put("parendId",privilege.getPrivilegeOperation());
			    jo.put("PrivilegeOperation", privilege.getPrivilegeOperation());
			    array.add(jo);
		   };
		   String str="{\"total\":"+privilegeService.count()+",\"rows\":"+array.toString()+"}";
			out().print(str);
			out().flush();
			out().close();
		return returnpd;
	}
	
//	public String queryPrivilege() throws IOException{
//		returnpd="ok";
//		JSONArray array =new JSONArray();
//		List<Privilege> list=new ArrayList<Privilege>();
//		int oldParentId = 0;	
//		if(parentId == 0){
//			list=privilegeService.queryPrivilege(oldParentId);
//		}
//		else{
//			list=privilegeService.queryPrivilege(parentId);
//		}
//			
//		for(Privilege privilege:list){
//		    JSONObject jo=new JSONObject();
//		    jo.put("id", privilege.getId());
//		    jo.put("RecordStatus", privilege.getRecordStatus());
//		    jo.put("parendId",privilege.getParentID());
//		    if(privilege.getParentID()==0){
//		    	jo.put("state","closed");		    	
//		    }
//		    else{
//		    	jo.put("state","open");
//		    }
//		    array.add(jo);
//	   };
//	   String str=array.toString();
//		out().print(str);
//		out().flush();
//		out().close();
//		return returnpd;
//	}
	
	public String queryPrivilege() throws IOException{
		returnpd="ok";
		JSONArray array =new JSONArray();		
		array = privilegeService.getMenu(parentId);
		String str=array.toString();
		out().print(str);
		out().flush();
		out().close();
		return returnpd;
	}

}
