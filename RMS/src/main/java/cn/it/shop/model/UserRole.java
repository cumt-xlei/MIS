package cn.it.shop.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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

	
	//1.设置一实体，级联操作为all.
	//2.插入外键不为空
		@Column
		public Integer getUserID() {
			return userID;
		}
		public void setUserID(Integer userID) {
			this.userID = userID;
		}
		@Column
		public Integer getRoleID() {
			return roleID;
		}
		public void setRoleID(Integer roleID) {
			this.roleID = roleID;
		}
}
