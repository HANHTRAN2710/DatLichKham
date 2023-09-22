<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags"%>
<script>
  $( function() {
    $( "#datepicker" ).datepicker({
    	dateFormat: 'dd/mm/yy'

    });
  } );
  </script>
<layout:user>
	<jsp:attribute name="content">
		<div class="content mt-3">
			<div class="animated fadeIn">
				<div class="row">

					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<strong class="card-title">Dang Nhap Tai Khoan</strong>

							</div>
							<div class="card-body">
								<form action="user?action=dangnhap" method="post"
									class="form-horizontal">

									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">Ho
												Benh nhan </label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="text-input" name="username"
												placeholder="Nhap ho " class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">Ten
												Benh nhan </label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="text-input" name="tenbn"
												placeholder="Nhap ten" class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">Ngay
												Sinh </label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="datepicker" name="ngaysinh"
												placeholder="dd/MM/yyyy" class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">gioi
												tinh </label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="text-input" name="gioitinh"
												placeholder="Nhap gioi tinh" class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">password
											</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="text-input" name="password"
												placeholder="Nhap password" class="form-control">
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

