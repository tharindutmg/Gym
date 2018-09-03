package com.gymmaster.front.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gymmaster.front.bd.NavigationBD;
import com.gymmaster.front.domain.Navigation;

@Controller
public class NavigationControlerAction {
	
	@Autowired
	private NavigationBD navigationBD;
	
	public NavigationBD getNavigationBD() {
		return navigationBD;
	}

	public void setNavigationBD(NavigationBD navigationBD) {
		this.navigationBD = navigationBD;
	}

	/*index page*/
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView getIndexPage() {
		ModelAndView modlView=new ModelAndView("Index");
		List<Navigation> navigationList=getNavigationBD().getNavigationURLList(); 
		modlView.addObject("naviList",navigationList);
        return modlView;
    }
	
	/*MembershipType Page*/
	@RequestMapping(value = "membershipType", method = RequestMethod.GET)
    public ModelAndView getMembershipPage() {
		return new ModelAndView("MembershipType");
    }
	
	/*dashbord Page*/
	@RequestMapping(value = "dashboard", method = RequestMethod.GET)
    public ModelAndView getDashbordPage() {
        return new ModelAndView("Dashboard");
    }
	
	/*@RequestMapping(value= "/navigationController", method= RequestMethod.POST)
	public @ResponseBody Map<String,String> loginCheck(@RequestParam String url){
		Map<String,String> map = new HashMap<String, String>();
		
		if(url.equals(NavigationURLMaster.DASHBOARD)){
			map.put("status", "200");
        	map.put("message", NavigationURLMaster.DASHBOARD);
		}else if(url.equals(NavigationURLMaster.MEMBERSHIPTYPE)) {
			map.put("status", "200");
        	map.put("message", NavigationURLMaster.MEMBERSHIPTYPE);
		}else{
			map.put("status", "200");
        	map.put("message", "error");
		}
		return map;
	}*/
	
	/*@RequestMapping(value= "/loadNavigation", method= RequestMethod.POST)
	public ModelAndView loadNavigation(){
		ModelAndView modlView = new ModelAndView();
		//Map<String,String> map = new HashMap<String, String>();
		
		//map.put("hello", "hello bro");
		modlView.addObject("hello","hellowww");
		modlView.setViewName("Index");
		return modlView;
	}*/
	
}
