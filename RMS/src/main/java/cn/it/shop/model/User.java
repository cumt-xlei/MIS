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
	private Integer deptID;
	private Integer supplierID;
	private Integer employeeID;
	private Integer createUserID;
	private Integer modifyUserID;
	private String loginName;
	private String loginPassword;
	private String realName;
	private String title;
	private String sex;
	private String phone;
	private String fax;
	private String email;
	private String qq;
	private String nickName;
	private String address;
	private String recordStatus;
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="DeptID")
	public Integer getDeptID() {
		return deptID;
	}
	public void setDeptID(Integer deptID) {
		this.deptID = deptID;
	}
	@Column(name="SupplierID")
	public Integer getSupplierID() {
		return supplierID;
	}
	public void setSupplierID(Integer supplierID) {
		this.supplierID = supplierID;
	}
	@Column(name="EmployeeID")
	public Integer getEmployeeID() {
		return employeeID;
	}
	public void setEmployeeID(Integer employeeID) {
		this.employeeID = employeeID;
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
	@Column(name="RealName",length=50)
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	@Column(name="Title",length=50)
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Column(name="Sex",length=50)
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	@Column(name="Phone",length=50)
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Column(name="Fax",length=50)
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	@Column(name="Email",length=50)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name="QQ",length=50)
	public String getQQ() {
		return qq;
	}
	public void setQQ(String qQ) {
		this.qq = qQ;
	}
	@Column(name="NickName",length=50)
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	@Column(name="Address")
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Column(name="RecordStatus")
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
}
