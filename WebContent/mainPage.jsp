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
	<title>MainPage</title>
</head>
<body>
<<<<<<< HEAD
<s:if test="%{#session['authentification']=='true'}" >
	<h1>Contact Manager</h1>
	<s:actionerror/>
	Bienvenue <s:property value="%{#session['nomUtilisateur']}"/> !
	<s:form action="deconnexion" method="post">
		<s:submit value="Déconnexion" align="center"/>
	</s:form>
	<!--
	<s:form action="add" method="post">
		<s:textfield name="contact.firstName" label="Firstname"/>
		<s:textfield name="contact.lastName" label="Lastname"/>
		<s:textfield name="contact.emailId" label="Email"/>
		<s:textfield name="contact.cellNo" label="Cell No."/>
		<s:textfield name="contact.website" label="Homepage"/>
		<s:textfield name="contact.birthDate" label="Birthdate"/>
		<s:submit value="Add Contact" align="center"/>
	</s:form>
	<s:form action="customPizza" method="post">
		<s:submit value="Creer ma pizza" align="center"/>
	</s:form>-->
	
	<s:form action="customPizza" method="post">
		<s:submit value="Creer ma pizza" align="center"/>
	</s:form>
	
	<s:form action="addPizza" method="post">
		<s:hidden name="pizza.ingredient1" value="1"/>
		<s:hidden name="pizza.ingredient2" value="2"/>
		<s:hidden name="pizza.ingredient3" value="3"/>
		<s:hidden name="pizza.basePrice" value="3"/>
		<s:hidden name="pizza.name" value="pizza au fromage"/>
		<img src="http://roadsmag.com/wp-content/uploads/2013/05/pizza.jpg" width="100" height="85" />
		<s:submit value="Ajouter pizza au fromage" align="center"/>
	</s:form>
	
	<s:form action="addPizza" method="post">
		<s:hidden name="pizza.ingredient1" value="2"/>
		<s:hidden name="pizza.ingredient2" value="2"/>
		<s:hidden name="pizza.ingredient3" value="3"/>
		<s:hidden name="pizza.basePrice" value="3"/>
		<s:hidden name="pizza.name" value="pizza aux fruits de mer"/>
		<img src="http://images.4ever.eu/data/674xX/aliments-et-boissons/[images.4ever.eu]%20pizza%20156600.jpg" width="100" height="85" />
		<s:submit value="Ajouter pizza au fruits de mer" align="center"/>
	</s:form>
	
	<h2>Panier</h2>
	
	<table id="pizza" border="1">

	<tr>
		<th>Nom</th>
		<th>Ingredient 1</th>
		<th>Ingredient 2</th>
		<th>Ingredient 3</th>
		<th>Total</th>
		<th>Supprimer</th>
	</tr>
	<s:iterator value="pizzaList" var="pizza">
		<tr>
			<td><s:property value="#pizza[0].name"/></td>
			<td><s:property value="#pizza[0].ingredient1Class.name"/></td>
			<td><s:property value="#pizza[0].ingredient2Class.name"/></td>
			<td><s:property value="#pizza[0].ingredient3Class.name"/></td>
			<td><s:property value="#pizza[0].ingredient1Class.price + #pizza[0].ingredient2Class.price + #pizza[0].ingredient3Class.price + #pizza[0].basePrice"/> €</td>
			<td><a href="deletePizza?id=<s:property value="#pizza[0].id"/>">supprimer</a></td>
		</tr>	
	</s:iterator>
	</table>
	
	<!--
	<table id="contact" border="1">
	<tr>
		<th>Name</th>
		<th>Email</th>
		<th>Cell No.</th>
		<th>Birthdate</th>
		<th>Homepage</th>
		<th>Delete</th>
	</tr>
	<s:iterator value="contactList" var="contact">
		<tr>
			<td><s:property value="lastName"/>, <s:property value="firstName"/> </td>
			<td><s:property value="emailId"/></td>
			<td><s:property value="cellNo"/></td>
			<td><s:property value="birthDate"/></td>
			<td><a href="<s:property value="website"/>">link</a></td>
			<td><a href="delete?id=<s:property value="id"/>">delete</a></td>
		</tr>	
	</s:iterator>
	</table>
	-->
</s:if>
<s:else>
	<h1>Veuillez-vous connecter pour accéder à cette page</h1>
	<s:form action="loginContact" method="post">
		<s:textfield name="contact.firstName" label="Identifiant (Prénom)" size="20"/>
		<s:password name="contact.password" label="Mot de passe" size="20"/>
		<s:submit value="Se connecter" align="center"/>
	</s:form>
</s:else>
</body>
</html>