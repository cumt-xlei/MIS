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
	private Integer DeptID;
	private Integer SupplierID;
	private Integer EmployeeID;
	private Integer CreateUserID;
	private Integer ModifyUserID;
	private String LoginName;
	private String LoginPassword;
	private String RealName;
	private String Title;
	private String Sex;
	private String Phone;
	private String Fax;
	private String Email;
	private String QQ;
	private String NickName;
	private String Address;
	private String RecordStatus;
	
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
		return DeptID;
	}
	public void setDeptID(Integer deptID) {
		DeptID = deptID;
	}
	@Column(name="SupplierID")
	public Integer getSupplierID() {
		return SupplierID;
	}
	public void setSupplierID(Integer supplierID) {
		SupplierID = supplierID;
	}
	@Column(name="EmployeeID")
	public Integer getEmployeeID() {
		return EmployeeID;
	}
	public void setEmployeeID(Integer employeeID) {
		EmployeeID = employeeID;
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
	@Column(name="LoginName",length=50,nullable=false)
	public String getLoginName() {
		return LoginName;
	}
	public void setLoginName(String loginName) {
		LoginName = loginName;
	}
	@Column(name="LoginPassword",length=50,nullable=false)
	public String getLoginPassword() {
		return LoginPassword;
	}
	public void setLoginPassword(String loginPassword) {
		LoginPassword = loginPassword;
	}
	@Column(name="RealName",length=50)
	public String getRealName() {
		return RealName;
	}
	public void setRealName(String realName) {
		RealName = realName;
	}
	@Column(name="Title",length=50)
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	@Column(name="Sex",length=50)
	public String getSex() {
		return Sex;
	}
	public void setSex(String sex) {
		Sex = sex;
	}
	@Column(name="Phone",length=50)
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	@Column(name="Fax",length=50)
	public String getFax() {
		return Fax;
	}
	public void setFax(String fax) {
		Fax = fax;
	}
	@Column(name="Email",length=50)
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	@Column(name="QQ",length=50)
	public String getQQ() {
		return QQ;
	}
	public void setQQ(String qQ) {
		QQ = qQ;
	}
	@Column(name="NickName",length=50)
	public String getNickName() {
		return NickName;
	}
	public void setNickName(String nickName) {
		NickName = nickName;
	}
	@Column(name="Address")
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	@Column(name="RecordStatus")
	public String getRecordStatus() {
		return RecordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		RecordStatus = recordStatus;
	}
}
