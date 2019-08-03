<%@ page language = "java" contentType = "text/html; charset = ISO-8859-1"
   pageEncoding = "ISO-8859-1"%>
<%@ taglib prefix = "s" uri = "/struts-tags"%>
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<!-- 
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Typography - Dark Admin</title>

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/local.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

   <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
    <link id="gridcss" rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/dark-bootstrap/all.min.css" />

    <script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
    <script type="text/javascript" src="http://www.prepbootstrap.com/Content/js/gridData.js"></script>
</head>
<body>

    <div id="wrapper">
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Back to Admin</a>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li><a href="index.html"><i class="fa fa-home"></i> Dashboard</a></li>
                    <li class="selected"><a href="student.html"><i class="fa fa-user"></i> Student</a></li>
                    <li><a href="class.html"><i class="fa fa-cogs"></i> Classes</a></li>
                    <li><a href="inventory.html"><i class="fa fa-search"></i> Inventory</a></li>
                    <li><a href="orders.html"><i class="fa fa-shopping-cart"></i> Orders</a></li>
                    <li><a href="attendance.html"><i class="fa fa-list-ul"></i> Attendance</a></li>
                    <li><a href="upcoming-events.html"><i class="fa fa-calendar-o"></i> Upcoming events</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right navbar-user">
                    <li class="dropdown messages-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Messages <span class="badge">2</span> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">2 New Messages</li>
                            <li class="message-preview">
                                <a href="#">
                                    <span class="avatar"><i class="fa fa-bell"></i></span>
                                    <span class="message">Security alert</span>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li class="message-preview">
                                <a href="#">
                                    <span class="avatar"><i class="fa fa-bell"></i></span>
                                    <span class="message">Security alert</span>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="#">Go to Inbox <span class="badge">2</span></a></li>
                        </ul>
                    </li>
                     <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Steve Miller<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                            <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
-->
<%@ include file="headerAndSideBar.jsp" %>


        <s:form action="AddNewOrder">
        <div>
            <div class="row text-center">
                <h2>New Order</h2>
            </div>
            
            <div class="col-md-12" style="margin-bottom:10px">
            	<label for="studentID" class="col-md-2">
            	Student ID: 
            	</label>
            	<div class="col-md-4">
            	<!-- <input type="text" required="required" class="form-control" name="studentID" id="studentID" placeholder="Enter Student ID">
            	 -->
            	 
            	 <s:select  required="required"  list ="allStudentsList" 
	                    headerValue="---Select---" headerKey="" 
	                    key="studentID" listKey="studentID" listValue="%{firstName+' '+ lastName+'('+studentID+')'}" class="form-control"/>					 
                    
            	 
            	</div>
            	<label for="purchaseDate" class="col-md-3 text-right">
            	Purchase Date:
            	</label>
            	<div class="col-md-2">
            	<input type="date" required="required" class="form-control" name="purchaseDate" id="purchaseDate">
            	</div>
            </div>
			
            <div class="col-md-12" style="margin-top:10px">
                <div class="col-md-2">
                </div>
                <div class="col-md-2">
                    <button type="submit" class="btn btn-info" value="next">
                        Next
                    </button>
                </div>
            </div>
        </div>  
       </s:form>

<%@ include file="footer.jsp" %>
