<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- Main CSS -->
<link href="${jstlCss}" rel="stylesheet" />

<h1>Edit Parts</h1>
<form:form action="${pageContext.request.contextPath}/part/editPart" method="post" commandName="part" path="partId" 
			value="${part.partId}">
	<div class="form-group">
		<label for="name">Name</label>
		<form:input path="name" id="name" class="form-Control" value="${part.name}"/>
	</div>

	<div class="form-group">
		<label for="description">Description</label>
		<form:textarea path="description" id="description"
			class="form-Control" value="${part.description}"/>
	</div>

	<div class="form-group">
		<label for="quantity">Quantity</label>
		<form:input path="quantity" id="quantity" class="form-Control" value="${part.quantity}"/>
	</div>

	<div class="form-group">
		<label for="modelNumber">Model Number</label>
		<form:input path="modelNumber" id="modelNumber"
			class="form-Control" value="${part.modelNumber}" />
	</div>

	<br>
	<input type="submit" value="submit" class="btn btn-default">
</form:form> 
 
<a href="/part">Back</a>

<%@include file="/WEB-INF/views/template/footer.jsp"%>