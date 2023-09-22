<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags"%>


<layout:admin>
	<jsp:attribute name="content">
		<div class="content mt-3">
			<div class="animated fadeIn">
				<div class="row">

					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<strong class="card-title">Danh Sach Khoa</strong>
							</div>
							<div class="card-body">
								<table id="bootstrap-data-table-export"
									class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>Ma Khoa</th>
											<th>Ten Khoa</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="k" items="${khoas }">
									<tr>
											<td>${k.makhoa }</td>
											<td>${k.tenkhoa }</td>
											<td>
											<a href="admin?action=editKhoa&makhoa=${k.makhoa }">Edit</a> |
											<a href="admin?action=deleteKhoa&makhoa=${k.makhoa }" onclick="return confirm('Are you sure?')">Delete</a> 
											</td>
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
