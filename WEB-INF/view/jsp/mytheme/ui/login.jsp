<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="org.springframework.security.web.WebAttributes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path=request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!--
		Charisma v1.0.0

		Copyright 2012 Muhammad Usman
		Licensed under the Apache License v2.0
		http://www.apache.org/licenses/LICENSE-2.0

		http://usman.it
		http://twitter.com/halalit_usman
	-->
	<meta charset="utf-8">
	<title>Free HTML5 Bootstrap Admin Template</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
	<meta name="author" content="Muhammad Usman">

	<!-- The styles -->
	<link href="<c:url value="/mycastheme/css/bootstrap-cerulean.css"/>" type="text/css" rel="stylesheet" />
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<link href="<c:url value="/mycastheme/css/bootstrap-responsive.css"/>" type="text/css" rel="stylesheet" />
	<link href="<c:url value="/mycastheme/css/charisma-app.css"/>" type="text/css" rel="stylesheet" />
	<link href="<c:url value="/mycastheme/css/opa-icons.css"/>" type="text/css" rel="stylesheet" />
	
	<link rel="shortcut icon" href="img/favicon.ico">
	
	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

</head>
<body class="loginPage">
<div class="container-fluid">
	<div class="row-fluid">

		<div class="row-fluid">
			<div class="span12 center login-header">
				<h2>Central Authentication Service (CAS)</h2>
			</div>
			<!--/span-->
		</div>
		<!--/row-->

		<div class="row-fluid">
			<div class="well span5 center login-box">
				<div class="alert alert-info"><form:errors path="*" id="msg" cssClass="errors" element="div" /></div>
				<form:form method="post" id="fm1" cssClass="form-horizontal" commandName="${commandName}" htmlEscape="true">
					<fieldset>
						
						<c:if test="${not empty sessionScope.openIdLocalId}">
							<strong>${sessionScope.openIdLocalId}</strong>
							<input type="hidden" id="username" name="username" value="${sessionScope.openIdLocalId}" />
						</c:if>
		 
						<c:if test="${empty sessionScope.openIdLocalId}">
							<spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey" />
							<form:input cssClass="required" cssErrorClass="error" id="username" size="25" tabindex="1" accesskey="${userNameAccessKey}" path="username" autocomplete="false" htmlEscape="true" />
						</c:if>
					
					
						<div class="input-prepend" title="Username" data-rel="tooltip">
							<span class="add-on"> <i class="icon-user"></i></span>
							<input autofocus class="input-large span10" name="username" id="username" type="text" value="admin" />
						</div>
						<div class="clearfix"></div>

						<div class="input-prepend" title="Password" data-rel="tooltip">
							<span class="add-on"><i class="icon-lock"></i></span>
							<input class="input-large span10" name="password" id="password" type="password" value="admin123456" />
						</div>
						<div class="clearfix"></div>

						<div class="input-prepend">
							<label class="remember" for="remember"><input type="checkbox" id="remember" />Remember me</label>
						</div>
						<div class="clearfix"></div>

						<p class="center span5">
							<button type="submit" class="btn btn-primary">Login</button>
						</p>
					</fieldset>
				</form:form>
			</div>
			<!--/span-->
		</div>
		<!--/row-->
	</div>
	<!--/fluid-row-->

</div>
<!--/.fluid-container-->
</body>
</html>