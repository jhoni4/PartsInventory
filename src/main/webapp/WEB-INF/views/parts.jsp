<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container">
	<section>
	<a href="/part/addPart">Add New Part</a>
		<table class="table table-striped">
			<thead class="thead-inverse">
				<tr>
					<th>#</th>
					<th>Name</th>
					<th>model No</th>
					<th>Quantity</th>
					<th>Description</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<%-- <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                             style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a></td>
                </tr>
            </c:forEach> --%>
				
					<c:set var="myIndex" value="1" />
				<c:forEach items="${partsList}" var="part">
					<tr>
						<th>${myIndex}</th>
						<td>${part.name}</td>
						<td>${part.modelNumber}</td>
						<td>${part.quantity}</td>
						<td>${part.description}</td>
						<td>
							<a href="<spring:url value="/part/viewPart/${part.partId}" />" >
							<span class="glyphicon glyphicon-info-sign"></span></a>
							<a href="<spring:url value="/part/deletePart/${part.partId}" />" >
							<span class="glyphicon glyphicon-trash"></span></a>
							<a href="<spring:url value="/part/editPart/${part.partId}" />" >
							<span class="glyphicon glyphicon-edit"></span></a>
                    	</td>
					</tr>
					<c:set var="myIndex" value="${myIndex + 1}" />
				</c:forEach>
			</tbody>
		</table>
	</section>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>