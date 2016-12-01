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
	//���
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
	
	//Ȩ�ޱ���
    public String savePrivilege() throws IOException {
        returnpd="ok";
        HttpServletRequest req = ServletActionContext.getRequest();
        req.setCharacterEncoding("UTF-8");
        String[] dataList = req.getParameterValues("array");
        ArrayList<String> list = new ArrayList<String>();

        int errori=0;//ʧ�ܴ���ͳ��
        int successi=0;//�����ɹ�����ͳ��
        int updatei =0;//�޸ĳɹ�����ͳ��
        for (int i = 0; i <dataList.length; i++) {

            
            PriList priListModel = new PriList();
           //����Master(�û����ǽ�ɫ),Key(ID),Ȩ��ID�ж��Ƿ��������Ȩ��
            priListModel=priListService.findByMKR(priMaster,priKey,Integer.parseInt(dataList[i]));
            boolean priPd1 =false;
            if(priListModel.getId() != null) {
                priPd1= true;
            }  
            
            //������ڣ����޸�
            if(priPd1==true){
                boolean pripd2 = true;
                PriList priviListModel = new PriList();
                priviListModel.setId(priListModel.getId());
                priviListModel.setPrivilegeAccess("permit");
                pripd2 = priListService.savePrivilege(priviListModel);
                if(pripd2==true) {
                    updatei+=1;
                    returnpd="ok";
                    System.out.println("�޸ĳɹ�");
                }
                else {
                    errori+=1;
                    returnpd="error";
                    System.out.println("�޸�ʧ��");
                }
            

                              
            }
            //��������ڣ�������
            else {
                boolean pripd3 = true;
                PriList priviListModel = new PriList();
                priviListModel.setPrivilegeMaster(priMaster);//�û���ɫ��
                priviListModel.setPrivilegeMasterKey(priKey);//�û���ɫID
                priviListModel.setPrivilegeAccess("permit");
                priviListModel.setToId(Integer.parseInt(dataList[i]));
                
                //����
                pripd3 = priListService.save(priviListModel);
                if(pripd3==false) {
                    errori+=1;
                    System.out.println("��������");
                    returnpd="error";                   
                }
                else {
                    successi+=1;
                    returnpd="ok";
                    System.out.println("�����ɹ�");
                }
                
            }           
        }
        
        //���ɹ�ʧ�ܴ���ƴװ
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

        int errori=0;//�޸�ʧ�ܴ���ͳ��
        int successi=0;//�޸ĳɹ�����ͳ��
        for (int i = 0; i <dataList.length; i++) {

            
            PriList priListModel = new PriList();
           //����Master(�û����ǽ�ɫ),Key(ID),Ȩ��ID�ж��Ƿ��������Ȩ��
            priListModel=priListService.findByMKR(priMaster,priKey,Integer.parseInt(dataList[i]));
            boolean priPd1 =false;
            if(priListModel.getId() != null) {
                priPd1= true;
            }  
            
            //������ڣ����ֹ
            if(priPd1==true){
                boolean pripd2 = true;
                PriList priviListModel = new PriList();
                priviListModel.setId(priListModel.getId());
                priviListModel.setPrivilegeAccess("forbid");
                pripd2 = priListService.savePrivilege(priviListModel);
                if(pripd2==true) {
                    successi+=1;
                    returnpd="ok";
                    System.out.println("��ֹ�ɹ�");
                }
                else {
                    errori+=1;
                    returnpd="error";
                    System.out.println("��ֹʧ��");
                }
            

                              
            }
            //��������ڣ��򷵻�ʧ��
            else {          
                errori+=1;
                returnpd="error";
                System.out.println("Ȩ�޲�����");
            }           
        }
        
        //���ɹ�ʧ�ܴ���ƴװ
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
