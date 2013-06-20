<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<style>
		body, input{
			font-family: Calibri, Arial;
		}
		
		#loginContact {
			background-color: #5F79C7;
			margin-left: -8px;
		    margin-right: -8px;
		    padding: 20px 30px 10px;
		}
		
		#loginContact table {
			margin: auto;
		}
		
		#loginContact table .tdLabel {
			font-size: 18px;
    		width: 150px;
		}
		
		#loginContact table input[type=text], #loginContact table input[type=password] {
			font-size: 15px;
		    padding: 0 5px;
		    width: 220px;
		}
		
		#submit-connexion {
			border-radius: 7px 7px 7px 7px;
		    border-style: solid;
		    cursor: pointer;
		    font-size: 17px;
		    margin: 5px;
		    text-align: center;
		    width: 370px;
		}
	</style>
	<title>Login</title>
</head>
<body>
	<h1>PIZZ'UP</h1>
	<h2>Page de connexion</h2>
	<jsp:include page="LoginForm.jsp" />
</body>
</html>