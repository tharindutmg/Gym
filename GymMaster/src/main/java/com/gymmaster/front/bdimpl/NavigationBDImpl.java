package com.gymmaster.front.bdimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gymmaster.front.bd.NavigationBD;
import com.gymmaster.front.dao.NavigationDAO;
import com.gymmaster.front.domain.Navigation;

@Service
public class NavigationBDImpl implements NavigationBD{

	@Autowired
	private NavigationDAO navigationDAO;
	
	public NavigationDAO getNavigationDAO() {
		return navigationDAO;
	}
	public void setNavigationDAO(NavigationDAO navigationDAO) {
		this.navigationDAO = navigationDAO;
	}

	public List<Navigation> getNavigationURLList() {
		return getNavigationDAO().getNavigationURLList();
	}

}
