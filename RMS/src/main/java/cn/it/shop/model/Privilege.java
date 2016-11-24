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
	private Integer PrivilegeMasterKey;
	private Integer PrivilegeAccessKey;
	private Integer CreateUserID;
	private Integer ModifyUserID;
	private String PrivilegeMaster;
	private String PrivilegeAccess;
	private String PrivilegeOperation;
	private String RecordStatus;
	
	
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
		return PrivilegeMasterKey;
	}
	public void setPrivilegeMasterKey(Integer privilegeMasterKey) {
		PrivilegeMasterKey = privilegeMasterKey;
	}
	@Column(name="PrivilegeAccessKey")
	public Integer getPrivilegeAccessKey() {
		return PrivilegeAccessKey;
	}
	public void setPrivilegeAccessKey(Integer privilegeAccessKey) {
		PrivilegeAccessKey = privilegeAccessKey;
	}
	@Column(name="CreateUserID")
	public Integer getCreateUserID() {
		return CreateUserID;
	}
	public void setCreateUserID(Integer createUserID) {
		CreateUserID = createUserID;
	}
	@Column(name="ModifyUserID")
	public Integer getModifyUserID() {
		return ModifyUserID;
	}
	public void setModifyUserID(Integer modifyUserID) {
		ModifyUserID = modifyUserID;
	}
	@Column(name="PrivilegeMaster",length=50)
	public String getPrivilegeMaster() {
		return PrivilegeMaster;
	}
	public void setPrivilegeMaster(String privilegeMaster) {
		PrivilegeMaster = privilegeMaster;
	}
	@Column(name="PrivilegeAccess",length=50)
	public String getPrivilegeAccess() {
		return PrivilegeAccess;
	}
	public void setPrivilegeAccess(String privilegeAccess) {
		PrivilegeAccess = privilegeAccess;
	}
	@Column(name="PrivilegeOperation",length=50)
	public String getPrivilegeOperation() {
		return PrivilegeOperation;
	}
	public void setPrivilegeOperation(String privilegeOperation) {
		PrivilegeOperation = privilegeOperation;
	}
	@Column(name="RecordStatus",length=50)
	public String getRecordStatus() {
		return RecordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		RecordStatus = recordStatus;
	}

}
