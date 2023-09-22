<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags"%>


<layout:user>
	<jsp:attribute name="content">
		<div class="content mt-3">
			<div class="animated fadeIn">
				<div class="row">

					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<strong class="card-title">Danh Sach Bac Si Thuoc Khoa</strong>
							</div>
							<div class="card-body">

								<table class="table table-striped table-bordered">

									<thead>
										<tr>
											
											<th>Ten Bac Si</th>
											
										</tr>
									</thead>
									<tbody>

										<c:forEach var="bs" items="${bacsis }">
											<tr>
												
												<td>${bs.tenbs }</td>
												
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
</layout:user>
