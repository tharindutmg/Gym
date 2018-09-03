package com.gymmaster.front.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.gymmaster.front.dao.NavigationDAO;
import com.gymmaster.front.domain.Navigation;

@Repository
@Transactional
public class NavigationDAOImpl implements NavigationDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSessionFactory() {
		Session currentSession=  sessionFactory.getCurrentSession();
		return currentSession;
	}

	public List<Navigation> getNavigationURLList() {
		Criteria cr=sessionFactory.getCurrentSession().createCriteria(Navigation.class);
		List<Navigation> navigationList= cr.list();
		return navigationList;
	}

}
