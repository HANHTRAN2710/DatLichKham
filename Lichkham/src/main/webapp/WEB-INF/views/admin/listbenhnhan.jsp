<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags"%>


<layout:admin>
	<jsp:attribute name="content">
		<div class="content mt-3">
			<div class="animated fadeIn">
				<div class="row">

					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<strong class="card-title">Benh Nhan</strong>
							</div>
							<div class="card-body">
								<table
									class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>Id</th>
											<th>Full Name</th>
											<th>DoB</th>
											<th>Gender</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="bn" items="${benhnhans }">
											<tr>
												<td>${bn.mabn }</td>
												<td><a href="admin?action=lichsu&mabn=${bn.mabn }">${bn.tenbn}</a></td>
												<td><f:formatDate value="${bn.ngaysinh }"
														pattern="dd/MM/yyyy" var="ngaysinh" /> ${ngaysinh }</td>
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

	</jsp:attribute>
</layout:admin>
