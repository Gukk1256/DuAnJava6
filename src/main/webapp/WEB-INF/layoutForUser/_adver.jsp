<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<style>
.nav-link {
	color: black !important;
}

.nav-item {
	background-color: #f8f9fa;
}

.space-cart {
	margin-left: 50px
}

.icon_cart_alt {
	color: black;
}

#sreach-but {
	color: black;
}
.dropacc{line-height: none !important}
</style>
<div class="nav-item">
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" class="active" href="index">Home page</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav"
				style="color: white;">
				<ul class="navbar-nav">
					<li><a class="navbar-brand" href="shop">Product <span
							class="sr-only">(current)</span>
					</a></li>
					<li><a class="navbar-brand" href="contact">Contact</a></li>

					<li class="nav-item dropdown"><a
						class="navbar-brand dropdown-toggle" href="#" role="button"
						data-toggle="dropdown" aria-expanded="false"> Account </a>
						<div class="dropdown-menu">
							<ul> 
							<c:if test="${!isLogin}">
							<li><a href="login">Login</a></li>
							<li><a href="register">Register</a></li>
						</c:if>
						<c:if test="${isLogin}">
							<li><a class="dropdown-item" href="change-password" >Change Password</a></li>
							<li><a class="dropdown-item" href="profile">My Profile</a></li>
						</c:if></ul>
						
						</div>
						</li>
						
						
						

				</ul>
			</div>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" id="sreach-but"
					type="submit">Search</button>
			</form>
			<div class="space-cart">
				<ul class="nav-right" style="list-style: none">
					<li class="cart-icon"><a href="/home/cart"> <i
							class="icon_cart_alt"></i>
					</a></li>

				</ul>
			</div>

		</nav>

		<%-- <div class="nav-depart">
			<div class="depart-btn">
				<i class="ti-menu"></i> <span>All departments</span>
				<ul class="depart-hover" th:each="category : ${categories}">
					<li class="active"><a href="/home/brand?field1=0000">Women’s
							Clothing</a></li>
					<li><a href="/home/brand?field1=1111">Men’s Clothing</a></li>
					<li><a href="/home/brand?field1=2222">Kid's Clothing</a></li>
					<li><a href="/home/brand?field1=1111">Accessories/Shoes</a></li>
				</ul>
			</div>
		</div>
		<nav class="nav-menu mobile-menu">
			<ul>
				<li class="active"><a href="index">Home</a></li>
				<li><a href="shop">Shop</a></li>
				<li><a href="shop">Collection</a>
					<ul class="dropdown">
						<li><a href="/home/brand?field1=1111">Men's</a></li>
						<li><a href="/home/brand?field1=0000">Women's</a></li>
						<li><a href="/home/brand?field1=2222">Kid's</a></li>
					</ul></li>
				<li><a href="blog">Blog</a></li>
				<li><a href="contact">Contact</a></li>
				<li><a href="#">Acc</a>
					<ul class="dropdown">
						<c:if test="${!isLogin}">
							<li><a href="login">Login</a></li>
							<li><a href="register">Register</a></li>
						</c:if>
						<c:if test="${isLogin}">
							<li><a href="change-password">Change Password</a></li>
							<li><a href="profile">My Profile</a></li>
						</c:if>
					</ul></li>
			</ul>
		</nav> --%>
		<div id="mobile-menu-wrap"></div>
	</div>
</div>