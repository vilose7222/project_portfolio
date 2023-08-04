<%@page import="java.util.Date"%>
<%@page import="ezen.portfolio.common.dao.DaoFactory"%>
<%@page import="ezen.portfolio.article.dto.Memo"%>
<%@page import="ezen.portfolio.article.dao.MemoDao"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
MemoDao memoDao = DaoFactory.getInstance().getMemoDao();
List<Memo> list = memoDao.findByAll();
request.setAttribute("list", list);
%>



<!doctype html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/assets/img/favicon.ico" type="image/ico">
<link rel="stylesheet"
	href="/assets/fonts/boxicons/css/boxicons.min.css">
<link rel="stylesheet" href="/assets/vendor/node_modules/css/aos.css">
<link rel="stylesheet" href="/assets/fonts/iconsmind/iconsmind.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;1,400&family=Source+Serif+Pro:ital@0;1&display=swap"
	rel="stylesheet">
<link href="assets/css/theme.min.css" rel="stylesheet">
<title>Sign Up</title>
</head>

<body>
	<div data-scroll-container>
		<!-- ======================================== Header Start ======================================== -->

		<!-- ======================================== Header End ======================================== -->
		<jsp:include page="nav.jsp"></jsp:include>
		<!-- Option Menu Start-->
	<%-- 	<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasEnd"
			aria-labelledby="offcanvasEnd">
			<div class="border-bottom offcanvas-header">
				<button type="button"
					class="btn btn-secondary p-0 m-0 width-4x height-4x flex-center ms-auto"
					data-bs-dismiss="offcanvas" aria-label="Close">
					<i class="bx bx-x fs-4"></i>
				</button>
			</div>
			<div class="offcanvas-body p-4 px-xl-5">
				<ul class="nav flex-column">
					<li class="nav-item"><a href="#"
						class="nav-link fs-2 fw-normal">홈으로</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link fs-2 fw-normal">자기소개</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link fs-2 fw-normal">포트폴리오</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link fs-2 fw-normal">보유기술</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link fs-2 fw-normal">기타등등</a></li>
				</ul>
			</div>
			<div class="offcanvas-footer p-4 px-xl-5">
				<ul class="list-unstyled mb-0">
					<li class="pb-4"><small class="text-body-secondary d-block">Email</small>
						<a href="mailto:some@gmail.com" class="link-underline fs-5">some@gmail.com</a>
					</li>
					<li>
						<ul class="list-inline">
							<li class="list-inline-item me-3"><a href="#" class="fs-5"><i
									class="bx bxl-facebook"></i></a></li>
							<li class="list-inline-item"><a href="#" class="fs-5"><i
									class="bx bxl-instagram"></i></a></li>
							<li class="list-inline-item me-3"><a href="#" class="fs-5"><i
									class="bx bxl-twitter"></i></a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
--%>
		<!-- Option Menu End-->
		<!-- ================================================== Main content Start =================================================-->
		<main>
			<section class="position-relative">
				<div
					class="bg-pattern text-primary text-opacity-50 opacity-25 w-100 h-100 start-0 top-0 position-absolute">
				</div>
				<div
					class="bg-gradientwhite flip-y w-50 h-100 start-50 top-0 translate-middle-x position-absolute"></div>
				<div
					class="container pt-11 pt-lg-14 pb-9 pb-lg-11 position-relative z-1">
					<div class="row align-items-center justify-content-center">

						<div class="col-md-8 z-2">
							<div class="position-relative">
								<h2>게시글</h2>
								<p class="mb-3 w-lg-75">자유롭게 글을 남겨 주세요.</p>
								<div class="width-50x pt-1 bg-primary mb-5"></div>

								<form action="<c:url value="/article/articles-action.jsp"/>"
									method="post" role="form" class="needs-validation mb-5 mb-lg-7"
									novalidate>
									<div class="row">
										<div class="mb-3 text-end">
											<c:set var="ymd" value = "<%=new java.util.Date()%>"/>
											<label class="form-label"><fmt:formatDate value="${ymd}" pattern="yyyy-MM-dd (E)"/></label>

											<textarea class="form-control" name="content"
												placeholder="로그인 하여야 게시글을 입력할 수 있습니다...." required
												<c:if test="${empty loginMember }">disabled</c:if>></textarea>

										</div>

										<div
											class="d-md-flex justify-content-end align-items-center mb-5">
											<input type="submit" value="글 남기기" id="sendBtn"
												class="btn btn-warning btn-sm">
										</div>
								</form>
								<div class="px-4  py-3 position-relative" data-aos="fade-up">
									<ul class="list-group">
										<c:forEach var="memo" items="${list}">
											<li class="list-group-item">
												<div class="mb-3 text-end">
													<label class="fs-6">${memo.memberName}님
														&nbsp;작성일:${memo.writeDate}</label>
													<p class="form-control text-start bg-gray-200" disabled>${memo.content}</p>
												</div>
											</li>
										</c:forEach>
									</ul>
								</div>




								<!-- pagination-->
								<nav class="mt-3">
									<ul class="pagination justify-content-center">
										<li class="page-item disabled"><a class="page-link"
											href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
										</a></li>
										<li class="page-item active"><a class="page-link"
											href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#"
											aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										</a></li>
									</ul>
								</nav>

							</div>

						</div>


					</div>
				</div>
	</div>
	</section>
	</main>
	<!-- ================================================== Main content End =================================================-


  <!-- begin Back to Top button -->
	<a href="#" class="toTop"> <svg xmlns='http://www.w3.org/2000/svg'
			viewBox='0 0 13 9' class="align-middle flip-y" width="13" height="9">
        <path fill='currentColor'
				d="M12.25 2.30062L10.8988 0.949371L6.5 5.33854L2.10125 0.949371L0.75 2.30062L6.5 8.05062L12.25 2.30062Z">
        </path>
      </svg>
	</a>
	<!-- scripts -->
	<script src="/assets/js/theme.bundle.min.js"></script>
</body>

</html>