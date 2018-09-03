package com.gymmaster.front.domain;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="navigation")
public class Navigation {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="navigation_id")
	private int navigationId;
	
	@Column(name="name")
	private String navigationName;
	
	@Column(name="action")
	private String navigationAction;
	
	@Column(name="img_class_name")
	private String navigationMenuImgClass;
	
	@Column(name="have_sub_menu")
	private int haveSubMenu; // 1- have a sub menu 0- not have sub menu 
	
	@OneToMany(fetch = FetchType.EAGER ,cascade=CascadeType.ALL,mappedBy="navigation")
	private List<NavigationSubMenu> navigationSubMenu= new ArrayList<>();
	
	
	public int getNavigationId() {
		return navigationId;
	}
	public void setNavigationId(int navigationId) {
		this.navigationId = navigationId;
	}
	
	public String getNavigationName() {
		return navigationName;
	}
	public void setNavigationName(String navigationName) {
		this.navigationName = navigationName;
	}
	
	
	public String getNavigationAction() {
		return navigationAction;
	}
	public void setNavigationAction(String navigationAction) {
		this.navigationAction = navigationAction;
	}
	
	public String getNavigationMenuImgClass() {
		return navigationMenuImgClass;
	}
	public void setNavigationMenuImgClass(String navigationMenuImgClass) {
		this.navigationMenuImgClass = navigationMenuImgClass;
	}
	
	public int getHaveSubMenu() {
		return haveSubMenu;
	}
	public void setHaveSubMenu(int haveSubMenu) {
		this.haveSubMenu = haveSubMenu;
	}
	public List<NavigationSubMenu> getNavigationSubMenu() {
		return navigationSubMenu;
	}
	public void setNavigationSubMenu(List<NavigationSubMenu> navigationSubMenu) {
		this.navigationSubMenu = navigationSubMenu;
	}
	
	
}
