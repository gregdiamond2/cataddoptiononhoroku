
<%@include file="common/header.jsp" %>

<body class="bodystuff">
		<title>Hello Spring MVC</title>
		
		
		
		<c:url var="productCatUrl" value="/resultOfCatSelection" />
<input type="hidden" name="productId" value="${catSelection.id}">
				
		
		<table>
			<div class="left">
			<th></th>
			<th>Type</th>
			<th>Name</th>
			<th>Total</th>
			<th>Gender</th>
			</div>

			
			
			
			<p><c:out value="${theNames.catName}" /></p>
			


			<c:forEach var="product" items="${shoppingCat}">

				<input type="hidden" name="catId" value="${catSelection.id}">
				<tr>



					<td><a href="${productCatUrl}"> <c:url
								value="${product.key.animalImage}" var="picture1" /> <img
							src="${picture1}" width=50% height=30% />
					</a></td>
				
					<td><c:out value="${product.quantity}" /></td>
					<td><c:out value="${theNames}" /></td>
					<td><c:out value="${product.value}" /></td>
					<td><c:out value="${product.key.animalGender}" /></td>
					
	
				</tr>


			</c:forEach>
</table>
<table>
					<tr>Total Cats!</tr>
					<td><c:out value="${count}" /></td>
					
			</table>	

		
		<div class="right">
			
		</div>
		<br>
		<div class="right">
			<c:url value="/" var="homePageUrl" />
		<a href="${homePageUrl}" >Check out</a>
		
		</div>

</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		</body>
		<%@include file="common/footer.jsp" %>