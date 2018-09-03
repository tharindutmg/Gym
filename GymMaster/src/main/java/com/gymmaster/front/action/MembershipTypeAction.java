package com.gymmaster.front.action;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gymmaster.front.domain.MembershipType;

@Controller
public class MembershipTypeAction {
	
	@RequestMapping(value="/addMembershipType", method=RequestMethod.POST)
	public ModelAndView addMembershipType(@Valid @ModelAttribute("membershiptype") MembershipType membershipType ,BindingResult result) {
		ModelAndView model= new ModelAndView("MembershipType");
		if (result.hasErrors()){
			System.out.println(membershipType.getMembershipName());
			System.out.println("error");
			model.addObject("screen", "create");
			return model;
			//System.out.println("error");
			//System.out.println(result.getAllErrors());
			//return "";
		}
		System.out.println("ok");
		System.out.println(membershipType.getMembershipName());
		System.out.println(membershipType.getMembershipCategory());
		System.out.println(membershipType.getMembershipPeriod());
		System.out.println(membershipType.getMembershipLimit());
		System.out.println(membershipType.getNofoClasses());
		System.out.println(membershipType.getClassPeriod());
		System.out.println(membershipType.getMembershipAmount());
		System.out.println(membershipType.getInstallmentPlan());
		System.out.println(membershipType.getInstallmentPlanSelect());
		System.out.println(membershipType.getSignupFee());
		return model;
		
	}

}
