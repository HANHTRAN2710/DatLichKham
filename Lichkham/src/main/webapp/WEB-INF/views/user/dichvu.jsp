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
								<strong class="card-title">Dich Vu Dang Ki Lich Kham Benh</strong>

							</div>
							<div class="card-body">
								<form action="user?action=dangnhap" method="post"
									class="form-horizontal">

									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">Bac Si </label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="text-input" name="tenbs"
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
												Kham </label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="datepicker" name="ngaykham"
												placeholder="dd/MM/yyyy" class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">
												Noi dung </label>
										</div>
										<div class="col-12 col-md-9">
										<textarea rows="5" cols="6" name="noidung"></textarea>
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

