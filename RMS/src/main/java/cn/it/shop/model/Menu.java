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
@Table(name="cf_menu")
public class Menu {
	private Integer id;
	private Integer MenuOrder;
	private Boolean IsVisible;
	private Boolean IsLeaf;
	private String MenuNo;
	private String MenuParentNo;
	private String MenuName;
	private String MenuUrl;
	private String MenuIcon;
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="MenuOrder")
	public Integer MenuOrder() {
		return MenuOrder;
	}
	public void setMenuOrder(Integer menuOrder) {
		MenuOrder = menuOrder;
	}
	@Column(name="IsVisible")
	public Boolean getIsVisible() {
		return IsVisible;
	}
	public void setIsVisible(Boolean isVisible) {
		IsVisible = isVisible;
	}
	@Column(name="IsLeaf")
	public Boolean getIsLeaf() {
		return IsLeaf;
	}
	public void setIsLeaf(Boolean isLeaf) {
		IsLeaf = isLeaf;
	}
	@Column(name="MenuNo")
	public String getMenuNo() {
		return MenuNo;
	}
	public void setMenuNo(String menuNo) {
		MenuNo = menuNo;
	}
	@Column(name="MenuOrder")
	public String MenuParentNo() {
		return MenuParentNo;
	}
	public void setMenuParentNo(String menuParentNo) {
		MenuParentNo = menuParentNo;
	}
	@Column(name="MenuName")
	public String getMenuName() {
		return MenuName;
	}
	public void setMenuName(String menuName) {
		MenuName = menuName;
	}
	@Column(name="MenuUrl")
	public String getMenuUrl() {
		return MenuUrl;
	}
	public void setMenuUrl(String menuUrl) {
		MenuUrl = menuUrl;
	}
	@Column(name="MenuIcon")
	public String getMenuIcon() {
		return MenuIcon;
	}
	public void setMenuIcon(String menuIcon) {
		MenuIcon = menuIcon;
	}

}
