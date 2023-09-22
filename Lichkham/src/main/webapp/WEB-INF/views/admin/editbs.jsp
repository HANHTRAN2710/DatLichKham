<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>


 <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker({
    	dateFormat: 'dd/mm/yy'

    });
  } );
  </script>

<layout:admin>
	<jsp:attribute name="content">
		<div class="card-header">
		
			<strong>Edit Bac Si</strong> 
		</div>
		<a href="admin?action=listbacsi">Back</a>
		<div class="card-body card-block">
			<form action="admin?action=editBs" method="post" 
				class="form-horizontal">
				
				<div class="row form-group">
					<div class="col col-md-3">
						<label for="text-input" class=" form-control-label">Ten Bac Si
							</label>
					</div>
					<div class="col-12 col-md-9">
						<input type="text" id="text-input" name="tenbs"
							placeholder="Nhap ten" class="form-control" value="${bs.tenbs }">
					</div>
				</div>
				<div class="row form-group">
					<div class="col col-md-3">
						<label for="text-input" class=" form-control-label">Ngay Sinh
							</label>
					</div>
					<div class="col-12 col-md-9">
					<f:formatDate value="${bs.ngaysinh }" pattern="dd/MM/yyyy" var="created"/>
						<input type="text" id="datepicker" name="ngaysinh"
							placeholder="dd/MM/yyyy" class="form-control" value="${created }">
					</div>
				</div>
				
				<div class="row form-group">
					<div class="col col-md-3">
						<label for="select" class=" form-control-label">Khoa</label>
					</div>
					<div class="col-12 col-md-9">
						<select name="khoa" id="select" class="form-control">
							<c:forEach var="k" items="${khoas }">
								<option value="${k.makhoa }" ${bs.khoa.makhoa == k.makhoa ? "selected" : "" }>${k.tenkhoa }</option>
							</c:forEach>
							
						</select>
					</div>
					<input type="hidden" id="text-input" name="mabs"
							placeholder="Nhap ten" class="form-control" value="${bs.mabs }">
				</div>
				
				<button type="submit" class="btn btn-primary btn-sm">Submit</button>
			</form>
		</div>

	</jsp:attribute>
</layout:admin>
