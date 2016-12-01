package cn.it.shop.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import cn.it.shop.model.PriList;
import cn.it.shop.model.Privilege;
import cn.it.shop.model.Role;
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
	
	//权限保存
    public String savePrivilege() throws IOException {
        returnpd="ok";
        HttpServletRequest req = ServletActionContext.getRequest();
        req.setCharacterEncoding("UTF-8");
        String[] dataList = req.getParameterValues("array");
        ArrayList<String> list = new ArrayList<String>();

        int errori=0;//失败次数统计
        int successi=0;//新增成功次数统计
        int updatei =0;//修改成功次数统计
        for (int i = 0; i <dataList.length; i++) {

            
            PriList priListModel = new PriList();
           //根据Master(用户还是角色),Key(ID),权限ID判断是否存在这条权限
            priListModel=priListService.findByMKR(priMaster,priKey,Integer.parseInt(dataList[i]));
            boolean priPd1 =false;
            if(priListModel.getId() != null) {
                priPd1= true;
            }  
            
            //如果存在，则修改
            if(priPd1==true){
                boolean pripd2 = true;
                PriList priviListModel = new PriList();
                priviListModel.setId(priListModel.getId());
                priviListModel.setPrivilegeAccess("permit");
                pripd2 = priListService.savePrivilege(priviListModel);
                if(pripd2==true) {
                    updatei+=1;
                    returnpd="ok";
                    System.out.println("修改成功");
                }
                else {
                    errori+=1;
                    returnpd="error";
                    System.out.println("修改失败");
                }
            

                              
            }
            //如果不存在，则新增
            else {
                boolean pripd3 = true;
                PriList priviListModel = new PriList();
                priviListModel.setPrivilegeMaster(priMaster);//用户角色表
                priviListModel.setPrivilegeMasterKey(priKey);//用户角色ID
                priviListModel.setPrivilegeAccess("permit");
                priviListModel.setToId(Integer.parseInt(dataList[i]));
                
                //保存
                pripd3 = priListService.save(priviListModel);
                if(pripd3==false) {
                    errori+=1;
                    System.out.println("新增出错");
                    returnpd="error";                   
                }
                else {
                    successi+=1;
                    returnpd="ok";
                    System.out.println("新增成功");
                }
                
            }           
        }
        
        //将成功失败次数拼装
        JSONArray array =new JSONArray();
        JSONObject jo=new JSONObject();
        jo.put("successi", successi);
        jo.put("updatei",updatei);
        jo.put("errori",errori);
        jo.put("returnpd",returnpd);
        array.add(jo);
        String str=array.toString();
        out().print(str);
        out().flush();
        out().close();
         return "ok";
    }
    
    public String updatePrivilege() throws IOException {
        
        returnpd="ok";
        HttpServletRequest req = ServletActionContext.getRequest();
        req.setCharacterEncoding("UTF-8");
        String[] dataList = req.getParameterValues("array");
        ArrayList<String> list = new ArrayList<String>();

        int errori=0;//修改失败次数统计
        int successi=0;//修改成功次数统计
        for (int i = 0; i <dataList.length; i++) {

            
            PriList priListModel = new PriList();
           //根据Master(用户还是角色),Key(ID),权限ID判断是否存在这条权限
            priListModel=priListService.findByMKR(priMaster,priKey,Integer.parseInt(dataList[i]));
            boolean priPd1 =false;
            if(priListModel.getId() != null) {
                priPd1= true;
            }  
            
            //如果存在，则禁止
            if(priPd1==true){
                boolean pripd2 = true;
                PriList priviListModel = new PriList();
                priviListModel.setId(priListModel.getId());
                priviListModel.setPrivilegeAccess("forbid");
                pripd2 = priListService.savePrivilege(priviListModel);
                if(pripd2==true) {
                    successi+=1;
                    returnpd="ok";
                    System.out.println("禁止成功");
                }
                else {
                    errori+=1;
                    returnpd="error";
                    System.out.println("禁止失败");
                }
            

                              
            }
            //如果不存在，则返回失败
            else {          
                errori+=1;
                returnpd="error";
                System.out.println("权限不存在");
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

    
}
