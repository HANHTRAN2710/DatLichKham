<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags"%>
<script>
	$(function() {
		$("#datepicker").datepicker({
			dateFormat : 'dd/mm/yy'

		});
	});
</script>
<layout:user>
	<jsp:attribute name="content">
		<div class="content mt-3">
			<div class="animated fadeIn">
				<div class="row">

					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<strong class="card-title">dat lich</strong>

							</div>
							<div class="card-body">
								<form action="user?action=datlich" method="post"
									class="form-horizontal">


									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">bac
												si</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="mabs" id="select" class="form-control">
												<c:forEach var="k" items="${bacsis }">
													<option value="${k.mabs }">${k.tenbs }</option>
												</c:forEach>


											</select>
										</div>
									</div>
<input type="hidden"  name="mabn" value="${sessionScope.bn.mabn}"
												 class="form-control">
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">Ngay
												Kham </label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="datepicker" name="ngaykham"
												placeholder="dd/MM/yyyy" class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">noi
												dung </label>
										</div>
										<div class="col-12 col-md-9">
											<textarea cols="6" rows="6" type="text" id="text-input" name="noidung"
												 class="form-control"> </textarea>
										</div>
									</div>

									<button type="submit" class="btn btn-primary btn-sm">Submit</button>
								</form>

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

