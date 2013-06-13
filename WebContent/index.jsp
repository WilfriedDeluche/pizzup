<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<style>
		body, input{
			font-family: Calibri, Arial;
		}
		table#contact {
			border-collapse: collapse;
			width:550px;
		}
		th {
			height: 40px;
			background-color: #ffee55;
		}
	</style>
	<title>Contact Manager - Struts2 Hibernate Example</title>
</head>
<body>

<h1>Bienvenue</h1>

<s:form action="connect" method="post">
	<s:submit value="Se connecter" align="center"/>
</s:form>
</body>
</html>