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
								<strong class="card-title">Danh Sach Bac Si</strong>
							</div>
							<div class="card-body">

								<table class="table table-striped table-bordered">

									<thead>
										<tr>
											<th>Ma Bac Si</th>
											<th>Ten Bac Si</th>
											<th>Ngay Sinh</th>
											<th>Khoa</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="bs" items="${bacsis }">
											<tr>
												<td>${bs.mabs }</td>
												<td><a href="admin?action=lichkham&mabs=${bs.mabs  }">${bs.tenbs }</a></td>
												<td><f:formatDate value="${bs.ngaysinh }"
														pattern="dd/MM/yyyy" var="ngaysinh" /> ${ngaysinh }</td>
												<td>${bs.khoa.tenkhoa }</td>
												<td><a href="admin?action=editBs&mabs=${bs.mabs }">Edit</a>
													| <a href="admin?action=deleteBs&mabs=${bs.mabs }"
													onclick="return confirm('Are you sure?')">Delete</a></td>
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
