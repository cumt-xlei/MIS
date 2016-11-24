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
	private Integer UserID;
	private Integer RoleID;
	private Integer CreateUserID;
	private Integer ModifyUserID;
	private String RecordStatus;
	
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
	@Column(name="RecordStatus")
	public String getRecordStatus() {
		return RecordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		RecordStatus = recordStatus;
	}

	
	//1.设置一实体，级联操作为all.
	//2.插入外键不为空
		@ManyToOne(targetEntity=User.class,cascade=CascadeType.ALL)
		@JoinColumn(name="UserID",referencedColumnName="id",nullable=false)
		public Integer getUserID() {
			return UserID;
		}
		public void setUserID(Integer userID) {
			UserID = userID;
		}
		@ManyToOne(targetEntity=Role.class,cascade=CascadeType.ALL)
		@JoinColumn(name="RoleID",referencedColumnName="id",nullable=false)
		public Integer getRoleID() {
			return RoleID;
		}
		public void setRoleID(Integer roleID) {
			RoleID = roleID;
		}
}
