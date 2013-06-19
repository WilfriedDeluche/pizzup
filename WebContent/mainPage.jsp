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
<s:if test="%{#session['authentification']=='true'}" >
	<h1>Contact Manager</h1>
	<s:actionerror/>
	Bienvenue <s:property value="%{#session['nomUtilisateur']}"/> !
	<s:form action="deconnexion" method="post">
		<s:submit value="Déconnexion" align="center"/>
	</s:form>
	
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
	
	<s:set var="sumTotal" value="0" />
	<s:set var="total" value="0 />"/>
	
	<s:iterator value="pizzaList" var="pizza">
		<tr>
			<s:set var="total" value="#pizza[0].ingredient1Class.price + #pizza[0].ingredient2Class.price + #pizza[0].ingredient3Class.price + #pizza[0].basePrice" />
			
			<td><s:property value="#pizza[0].name"/></td>
			<td><s:property value="#pizza[0].ingredient1Class.name"/></td>
			<td><s:property value="#pizza[0].ingredient2Class.name"/></td>
			<td><s:property value="#pizza[0].ingredient3Class.name"/></td>
			<td><s:property value="#total"/> €</td>
			<td><a href="deletePizza?id=<s:property value="#pizza[0].id"/>">supprimer</a></td>
			
			<s:set var="sumTotal" value="#sumTotal + #total" />
		</tr>	
	</s:iterator>
		<tr>
			<td colspan="4">Total du panier</td>
			<td><s:property value="#sumTotal"/> €</td>
			<td><a href="#">Encaisser</a></td>
		</tr>
	</table>
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