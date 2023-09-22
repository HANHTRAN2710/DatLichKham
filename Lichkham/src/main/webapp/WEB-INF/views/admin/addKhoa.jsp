<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags"%>


<layout:admin>
	<jsp:attribute name="content">
		<div class="card-header">
			<strong>Them Khoa</strong> 
		</div>
		<div class="card-body card-block">
			<form action="admin?action=addkhoa" method="post" 
				class="form-horizontal" >
				
				<div class="row form-group">
					<div class="col col-md-3">
						<label for="text-input" class=" form-control-label">Ten Khoa
							</label>
					</div>
					<div class="col-12 col-md-9">
						<input type="text" id="text-input" name="tenkhoa"
							placeholder="Nhap ten" class="form-control">
					</div>
				</div>
				
				<button type="submit" class="btn btn-primary btn-sm">Submit</button>
			</form>
		</div>

	</jsp:attribute>
</layout:admin>
