<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<script>
	function getScreen(value){
		//$("#mainFrame").attr("src", value);
		document.getElementById('mainFrame').src = value;
		/* var url=value+"Frame";
		var activeLi=value+"Li";
		alert("default method"+activeLi);
		document.getElementById(url).style.display				= 'none';
		document.getElementById(activeLi).className 				= "";  */
	}

	//data ="";
	//getScreen = function (value){
	//defaultFunction(value);
	  /*  $.ajax({
		   url: 'navigationController',
		   type: 'POST',
		   data: {url : value},
		   success:function (responce){
			   if(responce.message=="error"){ */
				  // $("#loginErr").text('Please check your login username or password!!');
			  // }else{
				   /* var url=responce.message+"Frame";
				   var activeLi=responce.message+"Li";
				   document.getElementById(url).style.display					= 'inline';
					document.getElementById(activeLi).className 				= "active"; */
				   
			  // }
		   //}
	   //});
	//}	
	
	

</script>
	<ul class="nav nav-list">
		<c:forEach items="${naviList}" var="navi">
			<c:if test = "${navi.haveSubMenu==0}">
				<li class="">
					<a href="" onclick="getScreen('${navi.navigationAction}');return false;" rel="no-refresh">
					<i class="menu-icon ${navi.navigationMenuImgClass}"></i>
					<span class="menu-text"> ${navi.navigationName}  </span>
					</a>
					<b class="arrow"></b>
				</li>
			</c:if>
			<c:if test = "${navi.haveSubMenu==1}">
			<c:if test = "${checkName!=navi.navigationName}">
			<li class="">
				<a href="#" class="dropdown-toggle">
					<i class="menu-icon fa fa-list"></i>
					<span class="menu-text"> Class & Nutrition Schedule </span>
					<b class="arrow fa fa-angle-down"></b>
				</a>
				<b class="arrow"></b>
				<c:forEach items="${navi.navigationSubMenu}" var="naviSub">
						<!-- sub menu -->
						<ul class="submenu">
							<li class="">
								<a href="" onclick="getScreen('${naviSub.navigationSubMenuAction}'); return false;" rel="no-refresh">
									<i class="menu-icon ${naviSub.navigationSubMenuImage}"></i>
									${naviSub.navigationSubMenuName}
								</a>
								<b class="arrow"></b>
							</li>
						</ul>
					</c:forEach>
				</li>
			</c:if>
			</c:if>
			<c:set var = "checkName" scope = "session" value = "${navi.navigationName}"/>
		</c:forEach>
	</ul><!-- /.nav-list -->
				
				