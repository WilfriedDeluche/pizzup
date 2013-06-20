<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<style>
		body, input{
			font-family: Calibri, Arial;
		}
		
		#createContact {
			background-color: #5F79C7;
			margin-left: -8px;
		    margin-right: -8px;
		    padding: 20px 30px 10px;
		}
		
		#createContact table {
			margin: auto;
		}
		
		#createContact table .tdLabel {
			font-size: 18px;
    		width: 150px;
		}
		
		#createContact table input[type=text], #createContact table input[type=password] {
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
		
		#main {
			float: right;
		}
	</style>
	<title>Inscription</title>
</head>
<body>
	<s:form action="main" method="post">
		<s:submit value="Page d'accueil" align="center"/>
	</s:form>
	
	<h1>PIZZ'UP</h1>
	<h2>Inscrivez-vous</h2>
	
	<s:form action="createContact" method="post">
	<s:textfield name="contact.firstName" label="Prénom" size="20"/>
	<s:textfield name="contact.lastName" label="Nom" size="20"/>
	<s:textfield name="contact.emailId" label="Email (obligatoire)" size="20"/>
	<s:password name="contact.password" label="Mot de passe (obligatoire)" size="20"/>
	<s:submit value="S'inscrire" align="center" id="submit-connexion"/>
</s:form>
</body>
</html>