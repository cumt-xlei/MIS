package cn.it.shop.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import cn.it.shop.model.Privilege;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class PrivilegeAction extends BaseAction<Privilege>{
	private String returnpd;
	private int parentId;
	private String priMaster;
	private int priKey;

	public String getPriMaster() {
        return priMaster;
    }
    public void setPriMaster(String priMaster) {
        this.priMaster = priMaster;
    }
    public int getPriKey() {
        return priKey;
    }
    public void setPriKey(int priKey) {
        this.priKey = priKey;
    }
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
	//输出
		public PrintWriter out()throws IOException{
			HttpServletResponse response=ServletActionContext.getResponse();  
	        response.setContentType("text/html");  
	        response.setContentType("text/plain; charset=utf-8");
	        PrintWriter out= response.getWriter();
	        return out;
		}
//	public String queryAllPrivilege() throws IOException{
//		returnpd="ok";
//		JSONArray array =new JSONArray();
//		   List<Privilege> list=new ArrayList<Privilege>();
//		   String hql="";
//			   list=privilegeService.queryAllPrivilege();		   
//		   for(Privilege privilege:list){
//			    JSONObject jo=new JSONObject();
//			    jo.put("id", privilege.getId());
//			    jo.put("parendId",privilege.getPrivilegeOperation());
//			    jo.put("PrivilegeOperation", privilege.getPrivilegeOperation());
//			    array.add(jo);
//		   };
//		   String str="{\"total\":"+privilegeService.count()+",\"rows\":"+array.toString()+"}";
//			out().print(str);
//			out().flush();
//			out().close();
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
    public String savePrivilege() throws IOException {
        returnpd="ok";
        HttpServletRequest req = ServletActionContext.getRequest();
        req.setCharacterEncoding("UTF-8");
        String[] dataList = req.getParameterValues("array");
        ArrayList<String> list = new ArrayList<String>();
        boolean pripd = true;
        int errori=0;
        int successi=0;
        for (int i = 0; i <dataList.length; i++) {
            Privilege pri =privilegeService.get(Integer.parseInt(dataList[i]));
            //根据Master,Key,RecordStatus判断是否存在这条权限
            boolean privipd=privilegeService.findByMKR(priMaster,priKey,pri.getRecordStatus());
            if(privipd==true){
                returnpd="error";
                errori+=1;
            }
            else {                
                System.out.println(pri.getPrivilegeOperation());
                Privilege privi = new Privilege();
                privi.setPrivilegeOperation(pri.getPrivilegeOperation());
                privi.setRecordStatus(pri.getRecordStatus());
                privi.setPrivilegeAccess("primit");
                privi.setPrivilegeMaster(priMaster);
                privi.setPrivilegeMasterKey(priKey);
                //保存
                pripd = privilegeService.save(privi);
                if(pripd==false) {
                    errori+=1;
                }
                else {
                    successi+=1;
                }
                returnpd="ok";
            }           
        }
       
        //将成功失败次数拼装
        JSONArray array =new JSONArray();
        JSONObject jo=new JSONObject();
        jo.put("successi", successi);
        jo.put("errori",errori);
        jo.put("returnpd",returnpd);
        array.add(jo);
        String str=array.toString();
        out().print(str);
        out().flush();
        out().close();
         return "ok";
    }
    
    public String updatePrivilege() throws UnsupportedEncodingException {
        returnpd="ok";
        HttpServletRequest req = ServletActionContext.getRequest();
        req.setCharacterEncoding("UTF-8");
        String[] dataList = req.getParameterValues("array");
        ArrayList<String> list = new ArrayList<String>();
        boolean pripd = true;
        for (int i = 0; i <dataList.length; i++) {
            Privilege pri =privilegeService.get(Integer.parseInt(dataList[i]));
            System.out.println(pri.getPrivilegeOperation());
            Privilege privi = new Privilege();
//            pri.getRecordStatus();
            privi.setPrivilegeAccess("forbid");
            pripd = privilegeService.update(privi);
            if(pripd==false) {
                returnpd="error";
            }
        }
        return "ok";
    }

    
    
}
