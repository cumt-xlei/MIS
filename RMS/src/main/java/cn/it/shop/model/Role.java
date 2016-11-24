package cn.it.shop.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cf_role")
public class Role implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer CreateUserID;
	private Integer ModifyUserID;
	private String RoleName;
	private String RoleDesc;
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	@Column(name="RoleName",length=50,nullable=false)
	public String getRoleName() {
		return RoleName;
	}
	public void setRoleName(String roleName) {
		RoleName = roleName;
	}
	@Column(name="RoleDesc",length=255)
	public String getRoleDesc() {
		return RoleDesc;
	}
	public void setRoleDesc(String roleDesc) {
		RoleDesc = roleDesc;
	}
	
}
