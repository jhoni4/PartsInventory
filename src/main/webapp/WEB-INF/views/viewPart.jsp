<%@include file="/WEB-INF/views/template/header.jsp"%>
<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Part Detail View</h1>
			<p class="lead">Here is the detail information of the part!</p>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-5"></div>

				<div class="col-md-5">
					<p>
						<strong>Name of part</strong> :${part.name}
					</p>
					<p>
						<strong>Description of part</strong> :${part.description}
					</p>
					<p>
						<strong>Model number</strong> : ${part.modelNumber}
					</p>
					<p>
						<strong>Quantity</strong> : ${part.quantity}
					</p>
					<br>

				</div>
			</div>
		</div>
		<button type="button" class="btn btn-default btn-lg">
			<a href="<spring:url value="/part" />"> <span
				class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span>Back
			</a>
		</button>
	</div>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>