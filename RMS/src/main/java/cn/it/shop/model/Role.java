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
	private Integer createUserID;
	private Integer modifyUserID;
	private String roleName;
	private String roleDesc;
	
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
	@Column(name="RoleName",length=50,nullable=false)
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getRoleName() {
		return roleName;
	}

	@Column(name="RoleDesc",length=255)
	public String getRoleDesc() {
		return roleDesc;
	}
	public void setRoleDesc(String roleDesc) {
		this.roleDesc = roleDesc;
	}

	
	
}
