<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags"%>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
	$(function() {
		var dateFormat = "dd/mm/yy", from = $("#from").datepicker({
			defaultDate : "+1w",
			changeMonth : true,
			numberOfMonths : 1,
			dateFormat : dateFormat
		}).on("change", function() {
			to.datepicker("option", "minDate", getDate(this));
		}), to = $("#to").datepicker({
			defaultDate : "+1w",
			changeMonth : true,
			numberOfMonths : 1,
			dateFormat : dateFormat
		}).on("change", function() {
			from.datepicker("option", "maxDate", getDate(this));
		});

		function getDate(element) {
			var date;
			try {
				date = $.datepicker.parseDate(dateFormat, element.value);
			} catch (error) {
				date = null;
			}

			return date;
		}
	});
</script>

<layout:admin>
	<jsp:attribute name="content">
		<div class="content mt-3">
			<div class="animated fadeIn">
				<div class="row">

					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<strong class="card-title">Lich Kham Bac Si</strong>
							</div>
							<div class="card-body">
	<fieldset>
		<legend>Search By Dates</legend>
		<form method="post" action="admin?action=searchbydate">
		
		<c:forEach var="lichkham" items="${lichkhams }">
		<input type="hidden" value="${lichkham.bacsi.mabs }" name="mabs">
		</c:forEach>


			<input type="text" id="from" name="from" value="${from }"> <input
				type="text" id="to" name="to" value="${to }"> <input
				type="submit" value="search">
		</form>
	</fieldset>
								<table
									class="table table-striped table-bordered">


									<thead>
										<tr>
											<th>Id</th>
											<th>Bac Si</th>
											<th>Benh Nhan</th>
											<th>Ngay Kham</th>
											<th>Noi Dung</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="lichkham" items="${lichkhams }">
											<tr>
												<td>${lichkham.id }</td>
												<td>${lichkham.bacsi.tenbs }</td>
												<td><a href="admin?action=lichsu&mabn=${lichkham.benhnhan.mabn }">${lichkham.benhnhan.tenbn }</a></td>
												<td><f:formatDate value="${lichkham.ngaykham }"
														pattern="dd/MM/yyyy" var="ngaykham" /> ${ngaykham }</td>

												<td>${lichkham.noidung }</td>
											</tr>
										</c:forEach>


									</tbody>
									
								</table>

								
							</div>
						</div>
					</div>


				</div>
			</div>
			<!-- .animated -->
		</div>
		<!-- .content -->

	</jsp:attribute>
</layout:admin>
