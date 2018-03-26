<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:set var="pageTitle" value="Cat Results!"/>
<%@include file="common/header.jsp" %>





<body class="bodystuff">
<section class="centeredPanel">


<c:url value="/resultOfCatSelection" var="formAction" />

<p>This ${catSelection.name} is going to be your new best friend!</p>
<p> Sex: ${catSelection.animalGender}</p>
<p> Here is ${param.catName } is this the cat you have allways dreamed of?</p>

<p>This cats id tag is ${catSelection.id}</p>

	<c:url var="catMeow" value="${catSelection.animalImage}" />
			<p><img src="${catMeow}" width=100% height=100% /></p>
				
	
<!--  form stuff -->

<c:url var="formAction2" value="/catCheckoutPage" />

<form method="POST" action="${formAction2}">

<div class="form-group">
				<label for="quantity"> </label> <input
					type="text" name="quantity" id="quantity" />
			</div>
<div class="form-group">
				    <input type="hidden" name="catId" value="${catSelection.id}"/>
					<input type="submit" value="Add To Cart" id="addToCart"/>
					 <input type="hidden" name="catUserName" value="${param.catName}"/>
		
			</div>
</form>



</section>


</body>



<%@include file="common/footer.jsp" %>