package cn.it.shop.model;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
/**
 * 
 *  @author L
 */
@Entity
@Table(name="cf_privilege")
public class Privilege {
	private Integer id;
	private Integer privilegeMasterKey;
	private Integer privilegeAccessKey;
	private Integer createUserID;
	private Integer modifyUserID;
	private String privilegeMaster;
	private String privilegeAccess;
	private String privilegeOperation;
	private String recordStatus;
	private Integer parentID;
	private String icon;
	
	
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="PrivilegeMasterKey")
	public Integer getPrivilegeMasterKey() {
		return privilegeMasterKey;
	}
	public void setPrivilegeMasterKey(Integer privilegeMasterKey) {
		this.privilegeMasterKey = privilegeMasterKey;
	}
	@Column(name="PrivilegeAccessKey")
	public Integer getPrivilegeAccessKey() {
		return privilegeAccessKey;
	}
	public void setPrivilegeAccessKey(Integer privilegeAccessKey) {
		this.privilegeAccessKey = privilegeAccessKey;
	}
	@Column(name="CreateUserID")
	public Integer getCreateUserID() {
		return createUserID;
	}
	public void setCreateUserID(Integer createUserID) {
		this.createUserID = createUserID;
	}
	@Column(name="ModifyUserID")
	public Integer getModifyUserID() {
		return modifyUserID;
	}
	public void setModifyUserID(Integer modifyUserID) {
		this.modifyUserID = modifyUserID;
	}
	@Column(name="PrivilegeMaster",length=50)
	public String getPrivilegeMaster() {
		return privilegeMaster;
	}
	public void setPrivilegeMaster(String privilegeMaster) {
		this.privilegeMaster = privilegeMaster;
	}
	@Column(name="PrivilegeAccess",length=50)
	public String getPrivilegeAccess() {
		return privilegeAccess;
	}
	public void setPrivilegeAccess(String privilegeAccess) {
		this.privilegeAccess = privilegeAccess;
	}
	@Column(name="PrivilegeOperation",length=50)
	public String getPrivilegeOperation() {
		return privilegeOperation;
	}
	public void setPrivilegeOperation(String privilegeOperation) {
		this.privilegeOperation = privilegeOperation;
	}
	@Column(name="RecordStatus",length=50)
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
	@Column(name="ParentID")
	public Integer getParentID() {
		return parentID;
	}
	public void setParentID(Integer parentID) {
		this.parentID = parentID;
	}
	@Column(name="Icon")
    public String getIcon() {
        return icon;
    }
    public void setIcon(String icon) {
        this.icon = icon;
    }
}
