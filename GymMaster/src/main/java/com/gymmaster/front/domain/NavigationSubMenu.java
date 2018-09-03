package com.gymmaster.front.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="navigation_sub")
public class NavigationSubMenu {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="sub_menu_id")
	private int navigationSubMenuId;
	
	@Column(name="name")
	private String navigationSubMenuName;
	
	@Column(name="action")
	private String navigationSubMenuAction;
	
	@Column(name="img_class_name")
	private String navigationSubMenuImage;
	
	@Column(name="parent_prg_id")
	private String parentId;
	
	@ManyToOne
	@JoinColumn(name="navigation_id")
	private Navigation navigation;
	
	
	public int getNavigationSubMenuId() {
		return navigationSubMenuId;
	}
	public void setNavigationSubMenuId(int navigationSubMenuId) {
		this.navigationSubMenuId = navigationSubMenuId;
	}
	public String getNavigationSubMenuName() {
		return navigationSubMenuName;
	}
	public void setNavigationSubMenuName(String navigationSubMenuName) {
		this.navigationSubMenuName = navigationSubMenuName;
	}
	public String getNavigationSubMenuAction() {
		return navigationSubMenuAction;
	}
	public void setNavigationSubMenuAction(String navigationSubMenuAction) {
		this.navigationSubMenuAction = navigationSubMenuAction;
	}
	public String getNavigationSubMenuImage() {
		return navigationSubMenuImage;
	}
	public void setNavigationSubMenuImage(String navigationSubMenuImage) {
		this.navigationSubMenuImage = navigationSubMenuImage;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public Navigation getNavigation() {
		return navigation;
	}
	public void setNavigation(Navigation navigation) {
		this.navigation = navigation;
	}
	
	
}
