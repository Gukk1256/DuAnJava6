<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Send feedback</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group">
						<label for="exampleFormControlInput1">Form</label> <input
							type="email" class="form-control" id="exampleFormControlInput1"
							placeholder="name@example.com">
					</div>
					<!-- <div class="form-group"> -->
						<label for="exampleFormControlSelect1">To select</label> 
						<!-- <select class="form-control" id="exampleFormControlSelect1"> -->
						<%-- <div class="row">
							<table class="table table-bordered table-hover">
							<thead>
							
							<tr>
							<th>Email</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach var="item" items="${page.content}">
							<tr>
							<td>${item.email}</td>
							</tr>
						
							
							
							</c:forEach>
							<tbody>
							</table></div> --%>
							
							<%-- <table class="table table-bordered table-hover">
								<thead>
									<tr>
									
										
										<th>Email</th>
									
									</tr>
								</thead>
								<tbody>

									<c:forEach var="item" items="${page.content}">
										<tr>
											
											
											<td>${item.email}</td>

										
											
											
										</tr>
									</c:forEach>


								</tbody>
								</table> --%>
							
							
							
							
							
							
						<!-- </select> -->
					<br>
					<div class="form-group">
						<label for="exampleFormControlSelect2">Subject
						<input
							type="email" class="form-control" id="exampleFormControlInput1"
							placeholder="name@example.com">
						</label>
							
					</div>
					<div class="form-group">
					<input type="file">
					</div>
					<div class="form-group">
						<label for="exampleFormControlTextarea1">Body</label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3"></textarea>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>

<header class="header-section">
	<div class="header-top">
		<div class="container">
			<div class="ht-left">
				<div class="mail-service">
					<i class=" fa fa-envelope" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#exampleModal"></i>
					getshop543@gmail.com
				</div>
				<!-- <div class="phone-service">
					<i class=" fa fa-phone"></i> +84 023.234.234
				</div> -->
			</div>
			<div class="ht-right">
				<!-- <a href="/home/login" class="login-panel"><i class="fa fa-user"></i>Login</a> -->

				<c:if test="${!isLogin}">
					<a href="/home/login" class="login-panel"><i class="fa fa-user"></i>Login</a>
					<div class="top-social">
						<a href="/home/register"><i class="fa fa-plus pr-1"></i>Register</a>
					</div>
				</c:if>
				<c:if test="${isLogin}">
					<c:if test="${admin}">
						<a href="/admin/index" class="login-panel"><i
							class="fa fa-user"></i>Administration</a>
					</c:if>
					<div class="top-social">
						<a href="profile" class="text-primary"
							style="font-weight: bolder;">${fullname}</a> <a
							class="text-danger" id="btnLogOff" href="/logout" title="">[Logout]</a>
					</div>
				</c:if>

			</div>
		</div>
	</div>

	<!--Logo-->
	<%-- <div class="container">
		<div class="inner-header">
			<div class="row">
				<div class="col-sm-8">

					</div>

			</div>

			<!-- <div class="col-lg-2 col-md-2">
					<div class="logo">
						<a href="index"> <img src="/forUser/img/logo.png"  alt="">
						</a>
					</div> 
				</div> -->
			<div class="col-lg-7 col-md-7">
					 <div class="advanced-search">
						<button type="button" class="category-btn">All Categories</button>
						<div class="input-group">
							<form action="search" method="post" >
								<input type="text" placeholder="What do you need?" name="keywords" value="">
								<button>
									<i class="ti-search"></i>
								</button>
							</form>
						</div>
					</div> 
					
		
				</div>
			<!-- <div class="col-lg-3 text-right col-md-3">
					<ul class="nav-right">
						<li class="cart-icon"><a href="/home/cart"> <i
								class="icon_cart_alt"></i>
						</a></li>
						<li class="cart-price">My Cart</li>
					</ul>
				</div> -->
		</div>
	</div> --%>
	</div>
</header>