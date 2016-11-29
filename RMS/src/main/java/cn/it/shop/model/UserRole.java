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
@Table(name="cf_userrole")
public class UserRole {
	private Integer id;
	private Integer userID;
	private Integer roleID;
	private Integer createUserID;
	private Integer modifyUserID;
	private String recordStatus;
	
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
	@Column(name="RecordStatus")
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}

	
	//1.设置一实体，级联操作为all.
	//2.插入外键不为空
		@ManyToOne(targetEntity=User.class,cascade=CascadeType.ALL)
		@JoinColumn(name="UserID",referencedColumnName="id",nullable=false)
		public Integer getUserID() {
			return userID;
		}
		public void setUserID(Integer userID) {
			this.userID = userID;
		}
		@ManyToOne(targetEntity=Role.class,cascade=CascadeType.ALL)
		@JoinColumn(name="RoleID",referencedColumnName="id",nullable=false)
		public Integer getRoleID() {
			return roleID;
		}
		public void setRoleID(Integer roleID) {
			this.roleID = roleID;
		}
}
