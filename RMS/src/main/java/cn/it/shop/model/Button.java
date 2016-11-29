package cn.it.shop.model;
import java.io.Serializable;
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
@Table(name="cf_button")
public class Button implements Serializable{
	private Integer id;
	private Integer seqNo;
	private String btnName;
	private String btnNo;
	private String btnClass;
	private String btnIcon;
	private String btnScript;
	private String menuNo;
	private String initStatus;	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="SeqNo")
	public Integer getSeqNo() {
		return seqNo;
	}
	public void setSeqNo(Integer seqNo) {
		this.seqNo = seqNo;
	}
	@Column(name="BtnName")
	public String getBtnName() {
		return btnName;
	}
	public void setBtnName(String btnName) {
		this.btnName = btnName;
	}
	@Column(name="BtnNo")
	public String getBtnNo() {
		return btnNo;
	}
	public void setBtnNo(String btnNo) {
		this.btnNo = btnNo;
	}
	@Column(name="BtnClass")
	public String getBtnClass() {
		return btnClass;
	}
	public void setBtnClass(String btnClass) {
		this.btnClass = btnClass;
	}
	@Column(name="BtnIcon")
	public String getBtnIcon() {
		return btnIcon;
	}
	public void setBtnIcon(String btnIcon) {
		this.btnIcon = btnIcon;
	}
	@Column(name="BtnScript")
	public String getBtnScript() {
		return btnScript;
	}
	@Column(name="MenuNo")
	public void setBtnScript(String btnScript) {
		this.btnScript = btnScript;
	}
	public String getMenuNo() {
		return menuNo;
	}
	public void setMenuNo(String menuNo) {
		this.menuNo = menuNo;
	}
	@Column(name="InitStatus")
	public String getInitStatus() {
		return initStatus;
	}
	public void setInitStatus(String initStatus) {
		this.initStatus = initStatus;
	}
}
