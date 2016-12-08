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
import cn.it.shop.model.User;
import cn.it.shop.model.UserRole;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class PrivilegeAction extends BaseAction<Privilege> {
	private static final String String = null;
    private String returnpd;
	private int parentId;
	private String priMaster;
	private int priKey;
	private int priPageId;
	private int id;
	private String pprivilegeOperation;
    private String precordStatus;
    private String ptitle;
    private String purl;


    public String getPprivilegeOperation() {
        return pprivilegeOperation;
    }

    public void setPprivilegeOperation(String pprivilegeOperation) {
        this.pprivilegeOperation = pprivilegeOperation;
    }

    public String getPrecordStatus() {
        return precordStatus;
    }

    public void setPrecordStatus(String precordStatus) {
        this.precordStatus = precordStatus;
    }

    public String getPtitle() {
        return ptitle;
    }

    public void setPtitle(String ptitle) {
        this.ptitle = ptitle;
    }

    public String getPurl() {
        return purl;
    }

    public void setPurl(String purl) {
        this.purl = purl;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPriPageId() {
        return priPageId;
    }

    public void setPriPageId(int priPageId) {
        this.priPageId = priPageId;
    }

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

	// ���
	public PrintWriter out() throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html");
		response.setContentType("text/plain; charset=utf-8");
		PrintWriter out = response.getWriter();
		return out;
	}

	public String queryPrivilege() throws IOException {
		returnpd = "ok";
		JSONArray array = new JSONArray();
		array = privilegeService.getMenu(parentId);
		String str = array.toString();
		out().print(str);
		out().flush();
		out().close();
		return returnpd;
	}

	// Ȩ�ޱ���
	public String savePrivilege() throws IOException {
		returnpd = "ok";
		HttpServletRequest req = ServletActionContext.getRequest();
		req.setCharacterEncoding("UTF-8");
		String[] dataList = req.getParameterValues("array");
		ArrayList<String> list = new ArrayList<String>();

		int errori = 0;// ʧ�ܴ���ͳ��
		int successi = 0;// �����ɹ�����ͳ��
		int updatei = 0;// �޸ĳɹ�����ͳ��
		for (int i = 0; i < dataList.length; i++) {

			PriList priListModel = new PriList();
			// ����Master(�û����ǽ�ɫ),Key(ID),Ȩ��ID�ж��Ƿ��������Ȩ��
			priListModel = priListService.findByMKR(priMaster, priKey, Integer.parseInt(dataList[i]));
			boolean priPd1 = false;
			if (priListModel.getId() != null) {
				priPd1 = true;
			}

			// ������ڣ����޸�
			if (priPd1 == true) {
				boolean pripd2 = true;
				PriList priviListModel = new PriList();
				priviListModel.setId(priListModel.getId());
				priviListModel.setPrivilegeAccess("permit");
				pripd2 = priListService.savePrivilege(priviListModel);
				if (pripd2 == true) {
					updatei += 1;
					returnpd = "ok";
					System.out.println("�޸ĳɹ�");
				} else {
					errori += 1;
					returnpd = "error";
					System.out.println("�޸�ʧ��");
				}

			}
			// ��������ڣ�������
			else {
				boolean pripd3 = true;
				PriList priviListModel = new PriList();
				priviListModel.setPrivilegeMaster(priMaster);// �û���ɫ��
				priviListModel.setPrivilegeMasterKey(priKey);// �û���ɫID
				priviListModel.setPrivilegeAccess("permit");
				priviListModel.setToId(Integer.parseInt(dataList[i]));

				// ����
				pripd3 = priListService.save(priviListModel);
				if (pripd3 == false) {
					errori += 1;
					System.out.println("��������");
					returnpd = "error";
				} else {
					successi += 1;
					returnpd = "ok";
					System.out.println("�����ɹ�");
				}

			}
		}

		// ���ɹ�ʧ�ܴ���ƴװ
		JSONArray array = new JSONArray();
		JSONObject jo = new JSONObject();
		jo.put("successi", successi);
		jo.put("updatei", updatei);
		jo.put("errori", errori);
		jo.put("returnpd", returnpd);
		array.add(jo);
		String str = array.toString();
		out().print(str);
		out().flush();
		out().close();
		return "ok";
	}

	public String updatePrivilege() throws IOException {

		returnpd = "ok";
		HttpServletRequest req = ServletActionContext.getRequest();
		req.setCharacterEncoding("UTF-8");
		String[] dataList = req.getParameterValues("array");
		ArrayList<String> list = new ArrayList<String>();

		int errori = 0;// �޸�ʧ�ܴ���ͳ��
		int successi = 0;// �޸ĳɹ�����ͳ��
		for (int i = 0; i < dataList.length; i++) {

			PriList priListModel = new PriList();
			// ����Master(�û����ǽ�ɫ),Key(ID),Ȩ��ID�ж��Ƿ��������Ȩ��
			priListModel = priListService.findByMKR(priMaster, priKey, Integer.parseInt(dataList[i]));
			boolean priPd1 = false;
			if (priListModel.getId() != null) {
				priPd1 = true;
			}

			// ������ڣ����ֹ
			if (priPd1 == true) {
				boolean pripd2 = true;
				PriList priviListModel = new PriList();
				priviListModel.setId(priListModel.getId());
				priviListModel.setPrivilegeAccess("forbid");
				pripd2 = priListService.savePrivilege(priviListModel);
				if (pripd2 == true) {
					successi += 1;
					returnpd = "ok";
					System.out.println("��ֹ�ɹ�");
				} else {
					errori += 1;
					returnpd = "error";
					System.out.println("��ֹʧ��");
				}

			}
			// ��������ڣ��򷵻�ʧ��
			else {
				errori += 1;
				returnpd = "error";
				System.out.println("Ȩ�޲�����");
			}
		}

		// ���ɹ�ʧ�ܴ���ƴװ
		JSONArray array = new JSONArray();
		JSONObject jo = new JSONObject();
		jo.put("successi", successi);
		jo.put("errori", errori);
		jo.put("returnpd", returnpd);
		array.add(jo);
		String str = array.toString();
		out().print(str);
		out().flush();
		out().close();
		return "ok";

	}
	
	//��ѯ��ť����
	public String searchBtnPrivilege() throws IOException {
	    User user=null;
	    user =(User) session.get("admin");
	    int viewUser = 0;
        int viewRole = 0;
        int permitPri = 0;
        int forbidPri = 0;
	    //��¼������ѯ
	    if(user != null) {
	        //�½�����洢Ȩ��ID����ǰ̨
	        //�����û�ID��ѯȨ������
	        List<PriList> priuserList=priListService.queryByPriId("user",user.getId());
	        System.out.println("�����û���ð�ťȨ��������"+priuserList.size());
	        for(PriList p : priuserList ) {
	            if(p.getToId()==21) {
                    viewUser=21;
                }
                if(p.getToId()==22) {
                    viewRole=22;
                }
                if(p.getToId()==23) {
                    permitPri=23;
                }
                if(p.getToId()==24) {
                    forbidPri=24; 
                }
	            System.out.println(p.getToId());
	            
	        }
	        
	        

	        List<UserRole> urList = userRoleService.queryByUserId(user.getId());
	        for(UserRole ur:urList) {
	            List<PriList> priroleList=priListService.queryByPriId("role",ur.getId());
	            System.out.println("���ݽ�ɫ��ð�ťȨ��������"+priroleList.size());
	            for(PriList p2 : priroleList ) {
	                if(p2.getToId()==21 && viewUser==0) {
	                    viewUser=21;
	                }
	                if(p2.getToId()==22 && viewRole==0) {
	                    viewRole=22;
	                }
	                if(p2.getToId()==23 && permitPri==0) {
	                    permitPri=23;
	                }
	                if(p2.getToId()==24 && forbidPri==0) {
	                    forbidPri=24; 
	                }
	                System.out.println(p2.getToId());
	                
	            }
	            
	        }
	        
	        
	        
	    }	

        //Ȩ�޴���ǰ̨
        JSONArray array = new JSONArray();
        JSONObject jo = new JSONObject();
        jo.put("viewUser",viewUser);
        jo.put("viewRole",viewRole);
        jo.put("permitPri",permitPri);
        jo.put("forbidPri",forbidPri);
        array.add(jo);
        String priId = array.toString();
        out().print(priId);
        out().flush();
        out().close();
	    return "ok";
	}
	
	public String saveNewPrivilege(){
	    System.out.println(purl);
	    model.setPrivilegeOperation(pprivilegeOperation);
	    model.setRecordStatus(precordStatus);	    
	    model.setTitle(ptitle);
	    model.setUrl(purl);
	    model.setParentID(parentId);	    
	    boolean pd =privilegeService.save(model);
	    if(pd==true) {
	        returnpd="1";
	    }
	    else {
	        returnpd="2";
	    }
	    return "ok";	    
	}
}
