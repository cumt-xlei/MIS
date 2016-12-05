package cn.it.shop.model;

import javax.persistence.CascadeType;
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
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	
	//1.����һʵ�壬��������Ϊall.
	//2.���������Ϊ��
		@ManyToOne(targetEntity=User.class,cascade=CascadeType.ALL)
		@JoinColumn(name="userID",nullable=false)
		public Integer getUserID() {
			return userID;
		}
		public void setUserID(Integer userID) {
			this.userID = userID;
		}
		@ManyToOne(targetEntity=Role.class,cascade=CascadeType.ALL)
		@JoinColumn(name="roleID",nullable=false)
		public Integer getRoleID() {
			return roleID;
		}
		public void setRoleID(Integer roleID) {
			this.roleID = roleID;
		}
}
