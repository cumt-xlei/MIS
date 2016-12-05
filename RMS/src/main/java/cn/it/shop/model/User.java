package cn.it.shop.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cf_user")
public class User implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String loginName;
	private String loginPassword;
	private String title;
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="LoginName",length=50,nullable=false)
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	@Column(name="LoginPassword",length=50,nullable=false)
	public String getLoginPassword() {
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}
	@Column(name="Title",length=50)
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
}
