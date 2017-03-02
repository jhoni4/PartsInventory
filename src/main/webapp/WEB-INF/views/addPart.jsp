<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- Main CSS -->
<link href="${jstlCss}" rel="stylesheet" />

<h1>Add New Parts</h1>
<%-- <form:form action="${pageContext.request.contextPath}/part/addPart" method="post" commandName="part" >
	<div class="form-group">
		<label for="name">Name</label>
		<form:input path="name" id="name" class="form-Control" />
	</div>

	<div class="form-group">
		<label for="description">Description</label>
		<form:textarea path="description" id="description"
			class="form-Control" />
	</div>

	<div class="form-group">
		<label for="quantity">Quantity</label>
		<form:input path="quantity" id="quantity" class="form-Control" />
	</div>

	<div class="form-group">
		<label for="modelNumber">Model Number</label>
		<form:input path="modelNumber" id="modelNumber"
			class="form-Control" />
	</div>

	<br>
	<input type="submit" value="submit" class="btn btn-default">
</form:form> --%>
 <form:form class="cf" action="/part/addPart" method="post" commandName="part">
	<div class="half left cf">
	  <div class="form-group">
	  <label for="name">Part Name:</label>
	     <form:input type="text" path="name" id="name" class="form-Control" placeholder="Name"/>
	  </div>
	  <div class="form-group">
	  <label for=quantity>Quantity:</label>
	     <form:input type="text" path="quantity" id="quantity" class="form-Control" placeholder="Quantity"/>
	  </div>
	  <div class="form-group">
	  <label for="modelNumber">Model:</label>
	     <form:input type="text" path="modelNumber" id="modelNumber" class="form-Control" placeholder="Model"/>
	  </div>
	 </div>
	  <div class="half right cf">
	  <label for="description">Description:</label>
	     <form:textarea name="message" type="text" path="description" id="description" class="form-Control" placeholder="Description"/>
	  </div>
	  <%-- <div class="half right cf">
	  <label for="department">Department:</label>
	     <form:select path="department" id="department" class="form-Control" >
	    	<form:options items="${part.departmentOptions}" />
	    </form:select>
	  </div> --%>  
  <input type="submit" value="Submit" id="input_submit">
</form:form> 
<a href="/part">Back</a>

<%@include file="/WEB-INF/views/template/footer.jsp"%>