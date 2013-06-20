<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<style>
		body, input{
			font-family: Calibri, Arial;
		}
		table#pizza {
			border-collapse: collapse;
			width:800px;
		}
		th, td {
			padding: 8px 10px 4px;
		}
		th {
			height: 35px;
			background-color: #DEDEDE;
		}
		td {
			font-size: 14px;
		}
		
		td.total {
			text-align: right;
		}
		
		.bold {
			font-weight: bold;
		}
		
		.pizzas-list {
			background-color: #5F79C7;
			margin-left: -8px;
		    margin-right: -8px;
		    padding: 20px 30px 10px;
		}
		
		#addPizza {
			border: 1px solid #DEDEDE;
		    border-radius: 9px 9px 9px 9px;
		    float: left;
		    margin-right: 10px;
		    text-align: center;
		    width: 180px;
		    height: 120px;
		    padding-top: 10px;
		    background-color: #FFF;
		}
		
		#addPizza img {
			max-width: 100px;
			max-height: 50px;
		}
		
		#addPizza span {
			display: inline-block;
		    line-height: 14px;
		    padding-top: 10px;
		}
		
		#addPizza table {
			width: 100%;
		}
		
		input[type="submit"] {
			font-size: 13px;
			cursor: pointer;
		}
		
		#deconnexion {
			float: right;
		}
	</style>
	<title>MainPage</title>
</head>
<body>
<s:if test="%{#session['authentification']=='true'}" >
	<s:form action="deconnexion" method="post">
		<s:submit value="Déconnexion" align="center" />
	</s:form>
	<h1>PIZZ'UP</h1>
	<s:actionerror/>
	Bienvenue <s:property value="%{#session['nomUtilisateur']}"/> !
	
	<s:form action="customPizza" method="post">
		<s:submit value="Creer ma pizza" align="center"/>
	</s:form>
	
	<h2>Notre sélection</h2>
	
	<div class="pizzas-list">
	
		<s:form action="addPizza" method="post" class="pizza_item">
			<s:hidden name="pizza.ingredient1" value="1"/>
			<s:hidden name="pizza.ingredient2" value="3"/>
			<s:hidden name="pizza.ingredient3" value="5"/>
			<s:hidden name="pizza.basePrice" value="3"/>
			<s:hidden name="pizza.name" value="Pizza au fromage"/>
			<img src="http://roadsmag.com/wp-content/uploads/2013/05/pizza.jpg" /><br />
			<span>Pizza au fromage</span>
			<s:submit value="Ajouter" align="center"/>
		</s:form>
		
		<s:form action="addPizza" method="post" class="pizza_item">
			<s:hidden name="pizza.ingredient1" value="2"/>
			<s:hidden name="pizza.ingredient2" value="2"/>
			<s:hidden name="pizza.ingredient3" value="3"/>
			<s:hidden name="pizza.basePrice" value="3"/>
			<s:hidden name="pizza.name" value="Pizza aux fruits de mer"/>
			<img src="http://images.4ever.eu/data/674xX/aliments-et-boissons/[images.4ever.eu]%20pizza%20156600.jpg" /><br />
			<span>Pizza aux fruits de mer</span>
			<s:submit value="Ajouter" align="center"/>
		</s:form>
		
		<s:form action="addPizza" method="post" class="pizza_item">
			<s:hidden name="pizza.ingredient1" value="1"/>
			<s:hidden name="pizza.ingredient2" value="12"/>
			<s:hidden name="pizza.ingredient3" value="8"/>
			<s:hidden name="pizza.basePrice" value="3"/>
			<s:hidden name="pizza.name" value="La Cannibale"/>
			<img src="http://www.dominos.fr/commande-en-ligne/img/choixPizzas/PCAN.png" /><br />
			<span>La Cannibale</span>
			<s:submit value="Ajouter" align="center"/>
		</s:form>
		
		<s:form action="addPizza" method="post" class="pizza_item">
			<s:hidden name="pizza.ingredient1" value="5"/>
			<s:hidden name="pizza.ingredient2" value="1"/>
			<s:hidden name="pizza.ingredient3" value="7"/>
			<s:hidden name="pizza.basePrice" value="5"/>
			<s:hidden name="pizza.name" value="Orientale"/>
			<img src="http://dominos.cdn.mediactive-network.net/site/media/img/cartes/pizzas/images/15_light.png" /><br />
			<span>L'Orientale</span>
			<s:submit value="Ajouter" align="center"/>
		</s:form>
		
		<s:form action="addPizza" method="post" class="pizza_item">
			<s:hidden name="pizza.ingredient1" value="13"/>
			<s:hidden name="pizza.ingredient2" value="14"/>
			<s:hidden name="pizza.ingredient3" value="11"/>
			<s:hidden name="pizza.basePrice" value="3"/>
			<s:hidden name="pizza.name" value="La Reine"/>
			<img src="http://dominos.cdn.mediactive-network.net/site/media/img/cartes/pizzas/images/2_light.png" /><br />
			<span>La Reine</span>
			<s:submit value="Ajouter" align="center"/>
		</s:form>
		
		<s:form action="addPizza" method="post" class="pizza_item">
			<s:hidden name="pizza.ingredient1" value="6"/>
			<s:hidden name="pizza.ingredient2" value="8"/>
			<s:hidden name="pizza.ingredient3" value="3"/>
			<s:hidden name="pizza.basePrice" value="4"/>
			<s:hidden name="pizza.name" value="L'Australienne"/>
			<img src="http://dominos.cdn.mediactive-network.net/site/media/img/cartes/pizzas/images/18_light.png" /><br />
			<span>L'Australienne</span>
			<s:submit value="Ajouter" align="center"/>
		</s:form>
		
		<s:form action="addPizza" method="post" class="pizza_item">
			<s:hidden name="pizza.ingredient1" value="1"/>
			<s:hidden name="pizza.ingredient2" value="10"/>
			<s:hidden name="pizza.ingredient3" value="3"/>
			<s:hidden name="pizza.basePrice" value="4"/>
			<s:hidden name="pizza.name" value="Margherita"/>
			<img src="http://dominos.cdn.mediactive-network.net/site/media/img/cartes/pizzas/images/1_light.png" /><br />
			<span>Margherita</span>
			<s:submit value="Ajouter" align="center"/>
		</s:form>
		
		<s:form action="addPizza" method="post" class="pizza_item">
			<s:hidden name="pizza.ingredient1" value="6"/>
			<s:hidden name="pizza.ingredient2" value="8"/>
			<s:hidden name="pizza.ingredient3" value="3"/>
			<s:hidden name="pizza.basePrice" value="4"/>
			<s:hidden name="pizza.name" value="Peppina"/>
			<img src="http://dominos.cdn.mediactive-network.net/site/media/img/cartes/pizzas/images/28_light.png" /><br />
			<span>Peppina</span>
			<s:submit value="Ajouter" align="center"/>
		</s:form>
		
		<s:form action="addPizza" method="post" class="pizza_item">
			<s:hidden name="pizza.ingredient1" value="11"/>
			<s:hidden name="pizza.ingredient2" value="10"/>
			<s:hidden name="pizza.ingredient3" value="13"/>
			<s:hidden name="pizza.basePrice" value="4"/>
			<s:hidden name="pizza.name" value="L'Hawaïenne"/>
			<img src="http://dominos.cdn.mediactive-network.net/site/media/img/cartes/pizzas/images/13_light.png" /><br />
			<span>L'Hawaïenne</span>
			<s:submit value="Ajouter" align="center"/>
		</s:form>
		
		<s:form action="addPizza" method="post" class="pizza_item">
			<s:hidden name="pizza.ingredient1" value="12"/>
			<s:hidden name="pizza.ingredient2" value="13"/>
			<s:hidden name="pizza.ingredient3" value="5"/>
			<s:hidden name="pizza.basePrice" value="3"/>
			<s:hidden name="pizza.name" value="Chickenita"/>
			<img src="http://dominos.cdn.mediactive-network.net/site/media/img/cartes/pizzas/images/7_light.png" /><br />
			<span>Chickenita</span>
			<s:submit value="Ajouter" align="center"/>
		</s:form>
		
		<s:form action="addPizza" method="post" class="pizza_item">
			<s:hidden name="pizza.ingredient1" value="6"/>
			<s:hidden name="pizza.ingredient2" value="5"/>
			<s:hidden name="pizza.ingredient3" value="3"/>
			<s:hidden name="pizza.basePrice" value="4"/>
			<s:hidden name="pizza.name" value="La Forestière"/>
			<img src="http://dominos.cdn.mediactive-network.net/site/media/img/cartes/pizzas/images/12_light.png" /><br />
			<span>La Forestière</span>
			<s:submit value="Ajouter" align="center"/>
		</s:form>
		
		<s:form action="addPizza" method="post" class="pizza_item">
			<s:hidden name="pizza.ingredient1" value="4"/>
			<s:hidden name="pizza.ingredient2" value="2"/>
			<s:hidden name="pizza.ingredient3" value="7"/>
			<s:hidden name="pizza.basePrice" value="4"/>
			<s:hidden name="pizza.name" value="L'Indienne"/>
			<img src="http://dominos.cdn.mediactive-network.net/site/media/img/cartes/pizzas/images/16_light.png" /><br />
			<span>L'Indienne</span>
			<s:submit value="Ajouter" align="center"/>
		</s:form>
		
		<div style="clear:both"></div>
	
	</div>
	
	<h2>Votre Panier</h2>
	
	<table id="pizza" border="1">

	<tr>
		<th>Nom</th>
		<th>Ingredient 1</th>
		<th>Ingredient 2</th>
		<th>Ingredient 3</th>
		<th>Total</th>
		<th>Actions</th>
	</tr>
	
	<s:set var="sumTotal" value="0" />
	<s:set var="total" value="0 />"/>
	
	<s:iterator value="pizzaList" var="pizza">
		<tr>
			<s:set var="total" value="#pizza[0].ingredient1Class.price + #pizza[0].ingredient2Class.price + #pizza[0].ingredient3Class.price + #pizza[0].basePrice" />
			
			<td class="bold"><s:property value="#pizza[0].name"/></td>
			<td><s:property value="#pizza[0].ingredient1Class.name"/></td>
			<td><s:property value="#pizza[0].ingredient2Class.name"/></td>
			<td><s:property value="#pizza[0].ingredient3Class.name"/></td>
			<td><s:property value="#total"/> €</td>
			<td><a href="deletePizza?id=<s:property value="#pizza[0].id"/>"><img src="http://socialprofiles.zenfs.com/images/585a5509e64b18c3a86df8040108997d_48.png" width="17" height="17" title="Supprimer" /></a></td>
			
			<s:set var="sumTotal" value="#sumTotal + #total" />
		</tr>	
	</s:iterator>
		<tr>
			<td colspan="4" class="bold total">TOTAL DU PANIER</td>
			<td class="bold"><s:property value="#sumTotal"/> €</td>
			<td><a href="#"><img src="http://kr.cdn4.123rf.com/168nwm/ratoca/ratoca1110/ratoca111000257/10985626-paying-hand-icon.jpg" width="21" height="19" title="Encaisser" /></a></td>
		</tr>
	</table>
</s:if>
<s:else>
	<h1>Veuillez-vous connecter pour accéder à cette page</h1>
	<jsp:include page="LoginForm.jsp" />
</s:else>
</body>
</html>