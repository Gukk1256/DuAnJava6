<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 
<!-- Page wrapper  -->
<div class="page-wrapper py-2">
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h3 class="alert alert-info">
					Account List <a href="accountControl"
						class="btn btn-success float-right">Add New Account</a>
				</h3>

				<div class="container" id="main-content">
					<div class="row">
						<!-- <div class="col-6 no-padding"></div>

						<div class="col-6 no-padding">
							<a href="#" class="btn btn-success float-right"> <i
								class="fa fa-plus-square"></i> New contact
							</a>
						</div> -->
					</div>

					<div class="row mt-4">
						<div class="table-responsive">
							<h5>List of contacts</h5>
							<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<th>Photo</th>
										<th>Username</th>
										<th>Password</th>
										<th>Fullname</th>
										<th>Email</th>
										<th>Activated</th>
										<th>Admin</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="item" items="${page.content}">
										<tr>
											<td class="px-0 m-0" width="8%" height="auto">
											<img src="/forAdmin/assets/images/users/${item.photo}" 
												 class="img-fluid">
												</td>
											<td>${item.username}</td>
											<td>${item.password}</td>
											<td>${item.fullname}</td>
											<td>${item.email}</td>

											<td>${item.activated}</td>
											<td>${item.admin}</td>
											<td><a href="account/edit/${item.username}"
												class="mr-sm-2 text-primary">
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
												<path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/></svg>
												
												</a>
												
												<a href="account/delete/${item.username}"
												class="text-danger"><i class="fa fa-trash"></i>
												</a>
											</td>
											
										</tr>
									</c:forEach>


								</tbody>

								<%-- <table class="table text-center">
					<thead>
						<tr>
							<th class ="p-0 m-0"   width="10%" style="font-weight: bolder; font-size: 18px; vertical-align: middle;">Photo</th>
							<th style="font-weight: bolder; font-size: 18px">Username</th>
							<th style="font-weight: bolder; font-size: 18px">Password</th>
							<th style="font-weight: bolder; font-size: 18px">Fullname</th>
							<th style="font-weight: bolder; font-size: 18px">Email</th>
							<th style="font-weight: bolder; font-size: 18px">Activated</th>
							<th style="font-weight: bolder; font-size: 18px">Admin</th>
							<th style="font-weight: bolder; font-size: 18px">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td class ="px-0 m-0"  width="10%">
									<img src="/forAdmin/assets/images/users/${item.photo}" alt="" width="50%" class="img-fluid">
								</td>
								<td>${item.username}</td>
								<td>${item.password}</td>
								<td>${item.fullname}</td>
								<td>${item.email}</td>
								
								<td>${item.activated}</td>
								<td>${item.admin}</td>
								<td> 
									<a class='btn btn-warning btn-xs' style="font-size: 14px" href="account/edit/${item.username}"> 
									<span class="glyphicon glyphicon-edit"></span> Edit	</a> 
									<a href="account/delete/${item.username}" style="font-size: 14px" class="btn btn-danger btn-xs"> 
									<span class="glyphicon glyphicon-remove"></span> Delete
								</a>
								</td>
							</tr>
						</c:forEach>
					</tbody> --%>
							</table>
							<hr />
							<div class="text-center">
								<a href="/admin/account?p=0" class="btn btn-primary">First</a> <a
									href="/admin/account?p=${page.number-1}"
									class="btn btn-primary">Previous</a> <a
									href="/admin/account?p=${page.number+1}"
									class="btn btn-primary">Next</a> <a
									href="/admin/account?p=${page.totalPages-1}"
									class="btn btn-primary">Last</a>
							</div>
							<hr />
						</div>
					</div>
				</div>
				<!-- End Container fluid  -->


				<!-- footer -->

				<footer class="footer text-center"> &copy; PS22126</footer>

				<!-- End footer -->

			</div>