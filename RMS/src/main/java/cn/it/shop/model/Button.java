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
@Table(name="cf_button")
public class Button {
	private Integer id;
	private Integer SeqNo;
	private String BtnName;
	private String BtnNo;
	private String BtnClass;
	private String BtnIcon;
	private String BtnScript;
	private String MenuNo;
	private String InitStatus;
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
		return SeqNo;
	}
	public void setSeqNo(Integer seqNo) {
		SeqNo = seqNo;
	}
	@Column(name="BtnName")
	public String getBtnName() {
		return BtnName;
	}
	public void setBtnName(String btnName) {
		BtnName = btnName;
	}
	@Column(name="BtnNo")
	public String getBtnNo() {
		return BtnNo;
	}
	public void setBtnNo(String btnNo) {
		BtnNo = btnNo;
	}
	@Column(name="BtnClass")
	public String getBtnClass() {
		return BtnClass;
	}
	public void setBtnClass(String btnClass) {
		BtnClass = btnClass;
	}
	@Column(name="BtnIcon")
	public String getBtnIcon() {
		return BtnIcon;
	}
	public void setBtnIcon(String btnIcon) {
		BtnIcon = btnIcon;
	}
	@Column(name="BtnScript")
	public String getBtnScript() {
		return BtnScript;
	}
	public void setBtnScript(String btnScript) {
		BtnScript = btnScript;
	}
	@Column(name="MenuNo")
	public String getMenuNo() {
		return MenuNo;
	}
	public void setMenuNo(String menuNo) {
		MenuNo = menuNo;
	}
	@Column(name="InitStatus")
	public  String getInitStatus() {
		return InitStatus;
	}
	public void setInitStatus( String initStatus) {
		InitStatus = initStatus;
	}
}
