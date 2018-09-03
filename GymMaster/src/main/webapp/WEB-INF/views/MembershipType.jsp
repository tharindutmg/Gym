<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<jsp:include page="include/AllLinks.jsp" />

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Membership Type</title>

		<meta name="description" content="Static &amp; Dynamic Tables" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		
		<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->

		<!-- ace settings handler -->
		<script src="assets/js/ace-extra.min.js"></script>

		<script type="text/javascript">
		//data ="";
		  function doAction(action){
			  var screen='${screen}';
			 // alert(screen);
			  if(screen!=''){
				  if(screen=="create"){
					  $("#mainView").hide();
					  $("#mainCreate").show();
					  screen='';
				  }else if(screen=="mainView"){
					  $("#mainView").show();
					  $("#mainCreate").hide();
					  screen='';
				  }
			  }else{
				  if(action=="create"){
					  $("#mainView").hide();
					  $("#mainCreate").show();
				  }else if(action=="mainView"){
					  $("#mainView").show();
					  $("#mainCreate").hide();
				  }
			  }
		}
		  
		  
		  
		   data ="";
		   submitMembershipType = function (){
			   alert("ok");
			   $.ajax({
				   url: 'addMembershipType',
				   type: 'POST',
				   data: {	membershipName 			: $("#membershipName").val(),
					   		membershipCategory 		: $("#membershipCategory").val(),
					   		membershipPeriod 		: $("#membershipPeriod").val(),
					   		membershipAmount 		: $("#membershipAmount").val(),
					   		installmentPlan 		: $("#installmentPlan").val(),
					   		installmentPlanSelect 	: $("#installmentPlanSelect").val(),
					   		membershipLimit 		: $("#membershipLimit").val(),
					   		nofoClasses 			: $("#nofoClasses").val(),
					   		classPeriod 			: $("#classPeriod").val(),
					   		signupFee 				: $("#signupFee").val()
					   	},
				   success:function (responce){
					   if(responce.message=="error"){
						   $("#loginErr").text('Please check your login username or password!!');
					   }if(responce.message=="success"){
						   $('#login').modal('hide');
						   $("#inputEmail").val('');
						   $("#inputPassword").val('');
					   }
				   }
			   });
			}		
		   
		</script>
		
		<style type="text/css">
		.btn-file {
		    position: relative;
		    overflow: hidden;
		}
		.btn-file input[type=file] {
		    position: absolute;
		    top: 0;
		    right: 0;
		    min-width: 100%;
		    min-height: 100%;
		    font-size: 100px;
		    text-align: right;
		    filter: alpha(opacity=0);
		    opacity: 0;
		    outline: none;
		    background: white;
		    cursor: inherit;
		    display: block;
		}
		
		#img-upload{
		    width: 100%;
		}
		.error{
		  	color:red;
		  	font-weight: bold;
		 }
		</style>
</head>
<body class="no-skin" onload="doAction('mainView');">
	<div id="mainView" class="page-content">
		<div class="row">
		<div class="page-header" style="height: 95px;">
			<h1>
				Membership
				<small>
					<i class="ace-icon fa fa-angle-double-right"></i>
					List
				</small>
			</h1>
			<button style="float: right;" class="btn btn-flat btn-custom" onclick="doAction('create');">+ Membership</button>
		</div><!-- /.page-header -->
		<!-- <div class="row"> -->
		<%-- <c:if test = "${action=='mainView'}"> --%>
			<div  class="col-xs-12">
			
				<!-- <h3 class="header smaller lighter blue">Membership List</h3> -->
				<p>
				
				</p>
	
				<div class="clearfix">
					<div class="pull-right tableTools-container"></div>
				</div>
				<div class="table-header">
					Memberships
				</div>
	
				<!-- div.table-responsive -->
	
				<!-- div.dataTables_borderWrap -->
				<div>
					<table id="dynamic-table" class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th class="center">
									<label class="pos-rel">
										<input type="checkbox" class="ace" />
										<span class="lbl"></span>
									</label>
								</th>
								<th>Domain</th>
								<th>Price</th>
								<th class="hidden-480">Clicks</th>
	
								<th>
									<i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
									Update
								</th>
								<th class="hidden-480">Status</th>
	
								<th></th>
							</tr>
						</thead>
	
						<tbody>
							<tr>
								<td class="center">
									<label class="pos-rel">
										<input type="checkbox" class="ace" />
										<span class="lbl"></span>
									</label>
								</td>
	
								<td>
									<a href="#">app.com</a>
								</td>
								<td>$45</td>
								<td class="hidden-480">3,330</td>
								<td>Feb 12</td>
	
								<td class="hidden-480">
									<span class="label label-sm label-warning">Expiring</span>
								</td>
	
								<td>
									<div class="hidden-sm hidden-xs action-buttons">
										<a class="blue" href="#">
											<i class="ace-icon fa fa-search-plus bigger-130"></i>
										</a>
	
										<a class="green" href="#">
											<i class="ace-icon fa fa-pencil bigger-130"></i>
										</a>
	
										<a class="red" href="#">
											<i class="ace-icon fa fa-trash-o bigger-130"></i>
										</a>
									</div>
	
									<div class="hidden-md hidden-lg">
										<div class="inline pos-rel">
											<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
												<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
											</button>
	
											<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
												<li>
													<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
														<span class="blue">
															<i class="ace-icon fa fa-search-plus bigger-120"></i>
														</span>
													</a>
												</li>
	
												<li>
													<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
														<span class="green">
															<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
														</span>
													</a>
												</li>
	
												<li>
													<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
														<span class="red">
															<i class="ace-icon fa fa-trash-o bigger-120"></i>
														</span>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			</div>
			</div>
			
			<div id="mainCreate" style="display: none;" class="page-content">
				<div class="row">
				<div class="page-header" style="height: 95px;">
					<h1>
						Membership
						<small>
							<i class="ace-icon fa fa-angle-double-right"></i>
							Add
						</small>
					</h1>
					<button class="btn btn-flat btn-custom" style="float: right;" onclick="doAction('mainView');">Membership List</button>
				</div><!-- /.page-header -->
			<div class="col-xs-12" >
			
				<!-- PAGE CONTENT BEGINS -->
				
				<!--********************************************** Membership Name - start **************************************************-->
				<form class="form-horizontal" id="validation-form" action="addMembershipType" method="POST">
					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-2 no-padding-right" for="form-input-readonly">Membership Name:</label>

						<div class="col-xs-12 col-sm-9">
							<div class="clearfix">
								<input type="text" name="membershipName" id="membershipName" class="col-xs-12 col-sm-11" />
								<form:errors path="membershipName" class="error"></form:errors>
							</div>
						</div>
					</div>
					
					<div class="space-2"></div>
					<!--********************************************** Membership Name - end **************************************************-->
					
					<!--********************************************** Membership Category - start **************************************************-->	
					<div class="form-group">
						<label class="col-xs-12 col-sm-2 control-label no-padding-right" for="form-input-readonly">Membership Category:</label>

						<div class="col-sm-9">
							<select class="col-xs-10 col-sm-5" id="membershipCategory" name="membershipCategory" >
								<option value=""> Select Category </option>
								<option value="regular">Regular</option>
								<option value="limited">Limited</option>
								<option value="legs">Total Gym Exercises for legs</option>
								<option value="biceps">Total Gym Exercises for Biceps</option>
								<option value="exercises">Exercises</option>
							</select>
							
							<span class="help-inline col-xs-12 col-sm-7">
								<label class="middle">
									<button disabled="disabled" class="btn btn-sm btn-primary" style="padding: 2px 20px;">Add Category</button>
								</label>
							</span>
						</div>
					</div>
					
					<div class="space-2"></div>
					<!--********************************************** Membership Category - end **************************************************-->
					
					<!--********************************************** Membership Period - start **************************************************-->
					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-2 no-padding-right" for="form-field-1">Membership Period:</label>
						
						<div class="col-xs-12 col-sm-9">
							<div class="clearfix">
								<div class="input-group">
									<span class="input-group-addon">No. of dates</span>
									<input class="form-control input-mask-phone" type="text" id="membershipPeriod" name="membershipPeriod"/>
								</div>
							</div>
						</div>
					</div>

					<div class="space-2"></div>
					<!--********************************************** Membership Period - end **************************************************-->
					
					<!--********************************************** Membership Limit - start **************************************************-->
					<div class="form-group">
						 <label class="control-label col-xs-12 col-sm-2 no-padding-right" for="form-field-1">Membership Limit:</label>
						
						<div class="col-xs-12 col-sm-10">
							<div class="clearfix">
								<span class="help-inline col-sm-2 align-middle">
									<label>
										<input name="membershipLimit" id="membershipLimit" type="radio" class="ace" value="limited"/>
										<span class="lbl"> Limited</span>
									</label>
								</span>
								<span class="help-inline col-sm-2 align-middle" >
									<label>
										<input name="membershipLimit" id="membershipLimit" type="radio" class="ace" value="unlimited" />
										<span class="lbl"> Unlimited</span>
									</label>
								</span>
								
								<span class="help-inline col-sm-4">
									<label>
										<input type="text" placeholder="No.Of classes" name="nofoClasses" id="nofoClasses" class="col-sm-15" />
									</label>
								</span>
								
								<span class="help-inline col-sm-2">
									<label>
										<select id="classPeriod" name="classPeriod" >
											<option value="week"> Class Every Week </option>
											<option value="month">Class Every Month</option>
										</select>
									</label>
								</span>
							</div>
						</div>
					</div>
					
					<div class="space-2"></div>
					<!--********************************************** Membership Limit - end **************************************************-->
					
					<!--********************************************** Membership Amount - start **************************************************-->
					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-2 no-padding-right" for="email">Membership Amount:</label>
						
						<div class="col-xs-12 col-sm-9">
							<div class="clearfix">
								<div class="input-group">
									<span class="input-group-addon">$</span>
									<input class="form-control input-mask-phone" type="text" id="membershipAmount" name="membershipAmount"/>
								</div>
							</div>
						</div>
					</div>
					
					<div class="space-2"></div>
					<!--********************************************** Membership Amount - end **************************************************-->
					
					<!-- <div class="form-group">
						<label class="control-label col-xs-12 col-sm-2 no-padding-right" for="email">Email Address:</label>
						
						<div class="col-xs-12 col-sm-9">
							<div class="clearfix">
								<div class="container">
								  <div class="row">
								       <div class="col-lg-12">
									     <div class="button-group">
									        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">None Selected <span class="caret"></span></button>
											<ul class="dropdown-menu">
											  <li><a href="#" class="small" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Option 1</a></li>
											  <li><a href="#" class="small" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Option 2</a></li>
											  <li><a href="#" class="small" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Option 3</a></li>
											  <li><a href="#" class="small" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Option 4</a></li>
											  <li><a href="#" class="small" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Option 5</a></li>
											  <li><a href="#" class="small" data-value="option6" tabIndex="-1"><input type="checkbox"/>&nbsp;Option 6</a></li>
											</ul>
									  	</div>
									</div>
								  </div>
								</div>
							</div>
						</div>
					</div> -->
					
					<!--********************************************** Select Class - start **************************************************-->
					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-2 no-padding-right" for="food">Select Class:</label>

						<div class="col-xs-12 col-sm-9">
							<select id="food" class="multiselect" multiple="">
								<option value="cheese">Cheese</option>
								<option value="tomatoes">Tomatoes</option>
								<option value="mozarella">Mozzarella</option>
								<option value="mushrooms">Mushrooms</option>
								<option value="pepperoni">Pepperoni</option>
							</select>
						</div>
					</div>
					
					<div class="space-2"></div>
					<!--********************************************** Select Class - end **************************************************-->
					
					<!--********************************************** Installment Plan - start **************************************************-->
					<div class="form-group">
						 <label class="control-label col-xs-12 col-sm-2 no-padding-right" for="email">Installment Plan:</label>
						
						<div class="col-xs-12 col-sm-10">
							<div class="clearfix">
								<span class="help-inline col-sm-3 ">
									<label>
										<input type="text" name="installmentPlan" id="installmentPlan" placeholder="Amount" class="col-sm-12" />
									</label>
								</span>
								<span class="help-inline col-sm-5 align-middle" >
									<label>
										<select id="installmentPlanSelect" name="installmentPlanSelect" class="" style="width: 300px;">
											<option value=""> Select installment Plan </option>
											<option value="1week">1 week</option>
											<option value="1month">1 month</option>
											<option value="1year">1 year</option>
										</select>
									</label>
								</span>
								
								<span class="help-inline col-sm-2">
									<button disabled="disabled" class="btn btn-sm btn-primary" style="padding: 2px 20px;">Add Installment Plan</button>
								</span>
							</div>
						</div>
					</div>
					
					<div class="space-2"></div>
					<!--********************************************** Installment Plan - end **************************************************-->
					
					<!--********************************************** Signup Fee - start **************************************************-->
					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-2 no-padding-right" for="email">Signup Fee:</label>
						
						<div class="col-xs-12 col-sm-9">
							<div class="clearfix">
								<div class="input-group">
									<span class="input-group-addon">$</span>
									<input class="form-control input-mask-phone" type="text" id="signupFee" />
								</div>
							</div>
						</div>
					</div>
					
					<div class="space-2"></div>
					<!--********************************************** Signup Fee - end **************************************************-->
					
					<!--********************************************** Email Address - start **************************************************-->
					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-2 no-padding-right" for="email">Email Address:</label>
						
						<div class="col-xs-12 col-sm-10">
							<div class="clearfix">
								<div class="input-group">
									
									<div class="col-sm-18">
										<!-- <h4 class="header green">Markdown Editor</h4> -->
				
										<div class="widget-box widget-color-blue">
											<div class="widget-header widget-header-small">  </div>
				
											<div class="widget-body">
												<div class="widget-main no-padding">
													<textarea name="content" data-provide="markdown" data-iconlibrary="fa" rows="10">**Markdown Editor** inside a *widget box*
				
													- list item 1
													- list item 2
													- list item 3</textarea>
												</div>
				
												<!-- <div class="widget-toolbox padding-4 clearfix">
													<div class="btn-group pull-left">
														<button class="btn btn-sm btn-info">
															<i class="ace-icon fa fa-times bigger-125"></i>
															Cancel
														</button>
													</div>
				
													<div class="btn-group pull-right">
														<button class="btn btn-sm btn-purple">
															<i class="ace-icon fa fa-floppy-o bigger-125"></i>
															Save
														</button>
													</div>
												</div> -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="space-2"></div>
					<!--********************************************** Email Address - end **************************************************-->
					
					<!--********************************************** Membership Image - start **************************************************-->
					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-2 no-padding-right" for="email">Membership Image:</label>
						
					<div class="col-xs-12 col-sm-9">
						<div class="clearfix">
							<label class="ace-file-input">
								<input id="id-input-file-2" type="file">
							<span class="ace-file-container" data-title="Choose">
							<span class="ace-file-name" data-title="No File ...">
							<i class=" ace-icon fa fa-upload"></i>
							</span></span>
								<a class="remove" href="#"><i class=" ace-icon fa fa-times"></i></a>
							</label>
						</div>
					</div>
					<div class="space-2"></div>
					<!--********************************************** Membership Image - end **************************************************-->
					
					<div class="col-md-offset-3 col-md-9">
						<!-- onclick="submitMembershipType();" --><button  class="btn btn-info" type="submit"><i class="ace-icon fa fa-check bigger-110"></i>Submit</button>
						&nbsp; &nbsp; &nbsp;
							<button class="btn" type="reset"><i class="ace-icon fa fa-undo bigger-110"></i>Reset</button>
						</div>
					</div>
				</form>
			</div>
			<%-- </c:if> --%>
		</div>
		<!-- </div> -->
	</div>
	<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->
		<!-- [if IE]> -->
		<script src="assets/js/jquery-1.11.3.min.js"></script>
		<!-- [endif] -->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.min.js"></script>
		<script src="assets/js/dataTables.buttons.min.js"></script>
		<script src="assets/js/buttons.flash.min.js"></script>
		<script src="assets/js/buttons.html5.min.js"></script>
		<script src="assets/js/buttons.print.min.js"></script>
		<script src="assets/js/buttons.colVis.min.js"></script>
		<script src="assets/js/dataTables.select.min.js"></script>
		
		<script src="assets/js/jquery-ui.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/markdown.min.js"></script>
		<script src="assets/js/bootstrap-markdown.min.js"></script>
		<script src="assets/js/jquery.hotkeys.index.min.js"></script>
		<script src="assets/js/bootstrap-wysiwyg.min.js"></script>
		<script src="assets/js/bootbox.js"></script>

		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
		
		<script src="assets/js/bootstrap-multiselect.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				//initiate dataTables plugin
				var myTable = 
				$('#dynamic-table')
				//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
				.DataTable( {
					bAutoWidth: false,
					"aoColumns": [
					  { "bSortable": false },
					  null, null,null, null, null,
					  { "bSortable": false }
					],
					"aaSorting": [],
					
					
					//"bProcessing": true,
			        //"bServerSide": true,
			        //"sAjaxSource": "http://127.0.0.1/table.php"	,
			
					//,
					//"sScrollY": "200px",
					//"bPaginate": false,
			
					//"sScrollX": "100%",
					//"sScrollXInner": "120%",
					//"bScrollCollapse": true,
					//Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
					//you may want to wrap the table inside a "div.dataTables_borderWrap" element
			
					//"iDisplayLength": 50
			
			
					select: {
						style: 'multi'
					}
			    } );
			
				
				
				$.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';
				
				new $.fn.dataTable.Buttons( myTable, {
					buttons: [
					  {
						"extend": "colvis",
						"text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
						"className": "btn btn-white btn-primary btn-bold",
						columns: ':not(:first):not(:last)'
					  },
					  {
						"extend": "copy",
						"text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copy to clipboard</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "csv",
						"text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Export to CSV</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "excel",
						"text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "pdf",
						"text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "print",
						"text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
						"className": "btn btn-white btn-primary btn-bold",
						autoPrint: false,
						message: 'This print was produced using the Print button for DataTables'
					  }		  
					]
				} );
				myTable.buttons().container().appendTo( $('.tableTools-container') );
				
				//style the message box
				var defaultCopyAction = myTable.button(1).action();
				myTable.button(1).action(function (e, dt, button, config) {
					defaultCopyAction(e, dt, button, config);
					$('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
				});
				
				
				var defaultColvisAction = myTable.button(0).action();
				myTable.button(0).action(function (e, dt, button, config) {
					
					defaultColvisAction(e, dt, button, config);
					
					
					if($('.dt-button-collection > .dropdown-menu').length == 0) {
						$('.dt-button-collection')
						.wrapInner('<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
						.find('a').attr('href', '#').wrap("<li />")
					}
					$('.dt-button-collection').appendTo('.tableTools-container .dt-buttons')
				});
			
				////
			
				setTimeout(function() {
					$($('.tableTools-container')).find('a.dt-button').each(function() {
						var div = $(this).find(' > div').first();
						if(div.length == 1) div.tooltip({container: 'body', title: div.parent().text()});
						else $(this).tooltip({container: 'body', title: $(this).text()});
					});
				}, 500);
				
				
				
				
				
				myTable.on( 'select', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', true);
					}
				} );
				myTable.on( 'deselect', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', false);
					}
				} );
			
			
			
			
				/////////////////////////////////
				//table checkboxes
				$('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);
				
				//select/deselect all rows according to table header checkbox
				$('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$('#dynamic-table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) myTable.row(row).select();
						else  myTable.row(row).deselect();
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#dynamic-table').on('click', 'td input[type=checkbox]' , function(){
					var row = $(this).closest('tr').get(0);
					if(this.checked) myTable.row(row).deselect();
					else myTable.row(row).select();
				});
			
			
			
				$(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
					e.stopImmediatePropagation();
					e.stopPropagation();
					e.preventDefault();
				});
				
				
				
				//And for the first simple table, which doesn't have TableTools or dataTables
				//select/deselect all rows according to table header checkbox
				var active_class = 'active';
				$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$(this).closest('table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
						else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#simple-table').on('click', 'td input[type=checkbox]' , function(){
					var $row = $(this).closest('tr');
					if($row.is('.detail-row ')) return;
					if(this.checked) $row.addClass(active_class);
					else $row.removeClass(active_class);
				});
			
				
			
				/********************************/
				//add tooltip for small view action buttons in dropdown menu
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				
				//tooltip placement on right or left
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
				
				
				
				
				/***************/
				$('.show-details-btn').on('click', function(e) {
					e.preventDefault();
					$(this).closest('tr').next().toggleClass('open');
					$(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
				});
				/***************/
				
				
				
				
				
				/**
				//add horizontal scrollbars to a simple table
				$('#simple-table').css({'width':'2000px', 'max-width': 'none'}).wrap('<div style="width: 1000px;" />').parent().ace_scroll(
				  {
					horizontal: true,
					styleClass: 'scroll-top scroll-dark scroll-visible',//show the scrollbars on top(default is bottom)
					size: 2000,
					mouseWheelLock: true
				  }
				).css('padding-top', '12px');
				*/
				
				
				var options = [];

				$( '.dropdown-menu a' ).on( 'click', function( event ) {

				   var $target = $( event.currentTarget ),
				       val = $target.attr( 'data-value' ),
				       $inp = $target.find( 'input' ),
				       idx;

				   if ( ( idx = options.indexOf( val ) ) > -1 ) {
				      options.splice( idx, 1 );
				      setTimeout( function() { $inp.prop( 'checked', false ) }, 0);
				   } else {
				      options.push( val );
				      setTimeout( function() { $inp.prop( 'checked', true ) }, 0);
				   }

				   $( event.target ).blur();
				      
				   console.log( options );
				   return false;
				});
				
				
				
				//TEXT EARIA=====================================================================================================================================
				$('textarea[data-provide="markdown"]').each(function(){
			        var $this = $(this);

					if ($this.data('markdown')) {
					  $this.data('markdown').showEditor();
					}
					else $this.markdown()
					
					$this.parent().find('.btn').addClass('btn-white');
			    })
				
				
				
				function showErrorAlert (reason, detail) {
					var msg='';
					if (reason==='unsupported-file-type') { msg = "Unsupported format " +detail; }
					else {
						//console.log("error uploading file", reason, detail);
					}
					$('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'+ 
					 '<strong>File upload error</strong> '+msg+' </div>').prependTo('#alerts');
				}

				//$('#editor1').ace_wysiwyg();//this will create the default editor will all buttons

				//but we want to change a few buttons colors for the third style
				$('#editor1').ace_wysiwyg({
					toolbar:
					[
						'font',
						null,
						'fontSize',
						null,
						{name:'bold', className:'btn-info'},
						{name:'italic', className:'btn-info'},
						{name:'strikethrough', className:'btn-info'},
						{name:'underline', className:'btn-info'},
						null,
						{name:'insertunorderedlist', className:'btn-success'},
						{name:'insertorderedlist', className:'btn-success'},
						{name:'outdent', className:'btn-purple'},
						{name:'indent', className:'btn-purple'},
						null,
						{name:'justifyleft', className:'btn-primary'},
						{name:'justifycenter', className:'btn-primary'},
						{name:'justifyright', className:'btn-primary'},
						{name:'justifyfull', className:'btn-inverse'},
						null,
						{name:'createLink', className:'btn-pink'},
						{name:'unlink', className:'btn-pink'},
						null,
						{name:'insertImage', className:'btn-success'},
						null,
						'foreColor',
						null,
						{name:'undo', className:'btn-grey'},
						{name:'redo', className:'btn-grey'}
					],
					'wysiwyg': {
						fileUploadError: showErrorAlert
					}
				}).prev().addClass('wysiwyg-style2');

				
				/**
				//make the editor have all the available height
				$(window).on('resize.editor', function() {
					var offset = $('#editor1').parent().offset();
					var winHeight =  $(this).height();
					
					$('#editor1').css({'height':winHeight - offset.top - 10, 'max-height': 'none'});
				}).triggerHandler('resize.editor');
				*/
				

				$('#editor2').css({'height':'200px'}).ace_wysiwyg({
					toolbar_place: function(toolbar) {
						return $(this).closest('.widget-box')
						       .find('.widget-header').prepend(toolbar)
							   .find('.wysiwyg-toolbar').addClass('inline');
					},
					toolbar:
					[
						'bold',
						{name:'italic' , title:'Change Title!', icon: 'ace-icon fa fa-leaf'},
						'strikethrough',
						null,
						'insertunorderedlist',
						'insertorderedlist',
						null,
						'justifyleft',
						'justifycenter',
						'justifyright'
					],
					speech_button: false
				});
				
				


				$('[data-toggle="buttons"] .btn').on('click', function(e){
					var target = $(this).find('input[type=radio]');
					var which = parseInt(target.val());
					var toolbar = $('#editor1').prev().get(0);
					if(which >= 1 && which <= 4) {
						toolbar.className = toolbar.className.replace(/wysiwyg\-style(1|2)/g , '');
						if(which == 1) $(toolbar).addClass('wysiwyg-style1');
						else if(which == 2) $(toolbar).addClass('wysiwyg-style2');
						if(which == 4) {
							$(toolbar).find('.btn-group > .btn').addClass('btn-white btn-round');
						} else $(toolbar).find('.btn-group > .btn-white').removeClass('btn-white btn-round');
					}
				});


				

				//RESIZE IMAGE
				
				//Add Image Resize Functionality to Chrome and Safari
				//webkit browsers don't have image resize functionality when content is editable
				//so let's add something using jQuery UI resizable
				//another option would be opening a dialog for user to enter dimensions.
				if ( typeof jQuery.ui !== 'undefined' && ace.vars['webkit'] ) {
					
					var lastResizableImg = null;
					function destroyResizable() {
						if(lastResizableImg == null) return;
						lastResizableImg.resizable( "destroy" );
						lastResizableImg.removeData('resizable');
						lastResizableImg = null;
					}

					var enableImageResize = function() {
						$('.wysiwyg-editor')
						.on('mousedown', function(e) {
							var target = $(e.target);
							if( e.target instanceof HTMLImageElement ) {
								if( !target.data('resizable') ) {
									target.resizable({
										aspectRatio: e.target.width / e.target.height,
									});
									target.data('resizable', true);
									
									if( lastResizableImg != null ) {
										//disable previous resizable image
										lastResizableImg.resizable( "destroy" );
										lastResizableImg.removeData('resizable');
									}
									lastResizableImg = target;
								}
							}
						})
						.on('click', function(e) {
							if( lastResizableImg != null && !(e.target instanceof HTMLImageElement) ) {
								destroyResizable();
							}
						})
						.on('keydown', function() {
							destroyResizable();
						});
				    }

					enableImageResize();

					/**
					//or we can load the jQuery UI dynamically only if needed
					if (typeof jQuery.ui !== 'undefined') enableImageResize();
					else {//load jQuery UI if not loaded
						//in Ace demo ./components will be replaced by correct components path
						$.getScript("assets/js/jquery-ui.custom.min.js", function(data, textStatus, jqxhr) {
							enableImageResize()
						});
					}
					*/
				}
				
				
				//////////////////
				$('.multiselect').multiselect({
				 enableFiltering: true,
				 enableHTML: true,
				 buttonClass: 'btn btn-white btn-primary',
				 templates: {
					button: '<button type="button" class="multiselect dropdown-toggle" data-toggle="dropdown"><span class="multiselect-selected-text"></span> &nbsp;<b class="fa fa-caret-down"></b></button>',
					ul: '<ul class="multiselect-container dropdown-menu"></ul>',
					filter: '<li class="multiselect-item filter"><div class="input-group"><span class="input-group-addon"><i class="fa fa-search"></i></span><input class="form-control multiselect-search" type="text"></div></li>',
					filterClearBtn: '<span class="input-group-btn"><button class="btn btn-default btn-white btn-grey multiselect-clear-filter" type="button"><i class="fa fa-times-circle red2"></i></button></span>',
					li: '<li><a tabindex="0"><label></label></a></li>',
			        divider: '<li class="multiselect-item divider"></li>',
			        liGroup: '<li class="multiselect-item multiselect-group"><label></label></li>'
				 }
				});
				
				//in ajax mode, remove remaining elements before leaving page
				$(document).one('ajaxloadstart.page', function(e) {
					/* $('[class*=select2]').remove();
					$('select[name="duallistbox_demo1[]"]').bootstrapDualListbox('destroy');
					$('.rating').raty('destroy'); */
					$('.multiselect').multiselect('destroy');
				});
				$('#id-input-file-1 , #id-input-file-2').ace_file_input({
					no_file:'No File ...',
					btn_choose:'Choose',
					btn_change:'Change',
					droppable:false,
					onchange:null,
					thumbnail:false //| true | large
					//whitelist:'gif|png|jpg|jpeg'
					//blacklist:'exe|php'
					//onchange:''
					//
				});
			
			}) //end
			
			
		</script>
	
	</body>
	</html>