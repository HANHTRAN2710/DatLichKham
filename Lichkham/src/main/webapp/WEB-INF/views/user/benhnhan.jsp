<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags"%>


<layout:user>
	<jsp:attribute name="content">
		<div class="content mt-3">
			<div class="animated fadeIn">
				<div class="row">

					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<strong class="card-title">Danh Sach Benh Nhan</strong>
							</div>
							<div class="card-body">
								<table id="bootstrap-data-table-export"
									class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>Ma benh nhan</th>
											<th>Ho Ten Benh nhan</th>
											<th>Ngay Sinh</th>
											<th>gioi tinh</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="bn" items="${benhnhans }">
											<tr>
												<td>${bn.mabn }</td>
												<td><a href="user?action=benhnhan&mabn=${bn.mabn  }">${bn.username }
														${bn.tenbn }</a></td>
												<td><f:formatDate value="${bn.ngaysinh }"
														pattern="dd/MM/yyyy" var="ngaysinh" /> ${bn.ngaysinh }</td>
												<td>${bn.gioitinh }</td>

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



		<!-- .content -->
	</jsp:attribute>

</layout:user>

