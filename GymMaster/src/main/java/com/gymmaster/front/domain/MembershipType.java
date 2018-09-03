package com.gymmaster.front.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="membership_type")
public class MembershipType {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="membership_id")
	public int membershipId;
	
	
	@Column(name="membership_name")
	@NotNull(message="Membership Name Riquired")
	public String membershipName;
	
	@Column(name="membership_category")
	public String membershipCategory;
	
	@Column(name="membership_period")
	public String membershipPeriod;
	
	@Column(name="class_period")
	public String classPeriod;
	
	@Column(name="membership_amount")
	public double membershipAmount;
	
	@Column(name="installment_plan")
	public double installmentPlan;
	
	@Column(name="installmentPlan_Select")
	public String installmentPlanSelect;
	
	@Column(name="signup_fee")
	public String signupFee;
	
	public String membershipLimit;
	public int nofoClasses;
	
	
	public int getMembershipId() {
		return membershipId;
	}
	public void setMembershipId(int membershipId) {
		this.membershipId = membershipId;
	}
	
	public String getMembershipName() {
		return membershipName;
	}
	public void setMembershipName(String membershipName) {
		this.membershipName = membershipName;
	}
	
	public String getMembershipCategory() {
		return membershipCategory;
	}
	public void setMembershipCategory(String membershipCategory) {
		this.membershipCategory = membershipCategory;
	}
	
	public String getMembershipPeriod() {
		return membershipPeriod;
	}
	public void setMembershipPeriod(String membershipPeriod) {
		this.membershipPeriod = membershipPeriod;
	}
	
	public String getClassPeriod() {
		return classPeriod;
	}
	public void setClassPeriod(String classPeriod) {
		this.classPeriod = classPeriod;
	}
	
	public double getMembershipAmount() {
		return membershipAmount;
	}
	public void setMembershipAmount(double membershipAmount) {
		this.membershipAmount = membershipAmount;
	}
	
	public double getInstallmentPlan() {
		return installmentPlan;
	}
	public void setInstallmentPlan(double installmentPlan) {
		this.installmentPlan = installmentPlan;
	}
	
	public String getInstallmentPlanSelect() {
		return installmentPlanSelect;
	}
	public void setInstallmentPlanSelect(String installmentPlanSelect) {
		this.installmentPlanSelect = installmentPlanSelect;
	}
	
	public String getSignupFee() {
		return signupFee;
	}
	public void setSignupFee(String signupFee) {
		this.signupFee = signupFee;
	}
	
	public String getMembershipLimit() {
		return membershipLimit;
	}
	public void setMembershipLimit(String membershipLimit) {
		this.membershipLimit = membershipLimit;
	}
	
	public int getNofoClasses() {
		return nofoClasses;
	}
	public void setNofoClasses(int nofoClasses) {
		this.nofoClasses = nofoClasses;
	}
	
	
}
