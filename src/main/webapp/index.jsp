<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
	crossorigin="anonymous"></script>
<script src="assets/js/nav.js"></script>
<title>Project_Portfolio_jsp</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="assets/css/styles.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap"
	rel="stylesheet">
</head>


<body>
	<!-- 
==========
  side-bar
==========
-->
	<div class="side-navbar">
		<a href="#my-home" class="sidebar-link"> <i class="fas fa-home"></i>
			<span class="sidebar-text">Home</span>
		</a> <a href="#about_me" class="sidebar-link"> <i class="fas fa-user"></i>
			<span class="sidebar-text">About</span>
		</a> <a href="#skills" class="sidebar-link"> <i class="fas fa-cogs"></i>
			<span class="sidebar-text">Skills</span>
		</a> <a href="#projects" class="sidebar-link"> <i
			class="fas fa-folder-open"></i> <span class="sidebar-text">Projects</span>
		</a> <a href="#team" class="sidebar-link"> <i class="fas fa-users"></i>
			<span class="sidebar-text">Team</span>
		</a> <a href="#contact" class="sidebar-link"> <i
			class="fas fa-envelope"></i> <span class="sidebar-text">Contact</span>
		</a>
	</div>
	<!-- 
==========
  nav-bar
==========
-->
	<nav class="navbar navbar-expand-lg">
		<div class="container">
			<a class="navbar-brand ml-auto" href="#">Portfolio.DJ</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-center"
				id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="#my-home">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#about_me">About
							Me</a></li>
					<li class="nav-item"><a class="nav-link" href="#skills">Skills</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#projects">Projects</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#team">Team</a>
					</li>
				</ul>
			</div>
			<ul class="navbar-nav ml-auto member-rep ">
				<li class="nav-item  sign-up "><a class="nav-link"
					href="<c:url value="/article/article3.jsp"/>"><i class="fas fa-book-open"></i>
						MEMO</a></li>


				<li class="nav-item log-in">
				<c:choose>
						<c:when test="${empty loginMember}">
							<a class="nav-link " href="<c:url value="/login.jsp"/>"><i
								class="fas fa-key"></i>LOG IN</a></li>
				<li class="nav-item  sign-up "><a class="nav-link" href="#"
					onclick="openPopup(event)"><i class="fa fa-user"></i> SIGN UP</a></li>
				</c:when>
				<c:otherwise>
					<li class="nav-item"><a class="nav-link" href="#">
							${loginMember.id}(${loginMember.name})님 반갑습니다.</a></li>
					<li class="nav-item sign-up"><a class="nav-link"
						href="<c:url value="/login/logout-action.jsp"/>"><i\
							class="fas fa-sign-out-alt"></i> LOG OUT</a></li>
				</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</nav>
	

	<!--
    =========
     home 
    =========-->
	<section class="my-home" id="my-home">
		<div class="container home-ov">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-m-12">
						<div class="header-info">
							<div class="my-promo wow fadeInUp">
								<span>MY NAME IS</span>
							</div>
							<h2 class="wow fadeInUp ss">Dongjin</h2>
							<h2>Yoon</h2>
							<h4 class="wow fadeInUp">I'M Developer</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="mouse-icon margin-20">
			<div class="scroll"></div>
	</section>
	<!-- 
    =======
    about 
    =======
  -->
	<section class="about_me" id="about_me">


		<div class="rela-block page">
			<div class="rela-block top-bar">
				<div class="caps name">
					<div class="abs-center">ABOUT ME</div>
				</div>
			</div>
			<div class="side-bar">
				<div class="mugshot">
					<div class="about_pic">
						<img src="img/mp.jpg" alt="">
					</div>
				</div>
				<div style="margin-top: 50px;">
					<p class="rela-block caps side-header info ">MY NAME IS</p>
					<p class="rela-block list-thing">윤동진 [Dongjin.Yoon]</p>

				</div>
				<p class="rela-block caps side-header info ">Info</p>
				<p class="birth">
					<i class="fas fa-birthday-cake info_i" style="color: #000000;"></i>1996.03.01
				</p>
				<p class="phone">
					<i class="fas fa-mobile info_i" style="color: #000000;"></i>+82-4465-8877
				</p>
				<p class="email">
					<i class="fas fa-envelope info_i" style="color: #0d0d0d;"></i>vilose72@naver.com
				</p>
				<p class="rela-block caps side-header">Expertise</p>
				<p class="rela-block list-thing">JAVA</p>
				<p class="rela-block list-thing">SQL & PLSQL</p>
				<p class="rela-block list-thing">JavaScript</p>
				<p class="rela-block list-thing">DB MODELING</p>
				<p class="rela-block list-thing">HTML</p>
				<p class="rela-block list-thing">CSS</p>
				<p class="rela-block caps side-header">License</p>
				<p class="rela-block list-thing">공인중개사 자격증 (제 32회)</p>
				<p class="rela-block caps side-header">Education</p>
				<p class="rela-block list-thing">
					풀스택 자바 웹개발 과정<br>(23.04.20 ~ 23.10.04)
				</p>
			</div>
			<div class="rela-block content-container">
				<h2 class="rela-block caps title">Jr Back-End Developer</h2>
				<div class="rela-block separator"></div>
				<div class="rela-block caps greyed">Introduce</div>
				<p class="long-margin">Lorem ipsum dolor sit amet consectetur
					adipisicing elit. Consectetur soluta dolorem pariatur fuga,
					eligendi magnam a quae perspiciatis maxime, deleniti adipisci
					cupiditate debitis necessitatibus dolorum animi! Nam ex natus
					aliquam!</p>
				<div class="rela-block caps greyed">SLOGAN & MOTO</div>
				<p class="long-margin">Lorem ipsum dolor sit amet consectetur
					adipisicing elit. Consectetur soluta dolorem pariatur fuga,
					eligendi magnam a quae perspiciatis maxime, deleniti adipisci
					cupiditate debitis necessitatibus dolorum animi! Nam ex natus
					aliquam!</p>
				<div class="rela-block caps greyed">Experience</div>

				<h3 class="exp">Job #1</h3>
				<p class="light">First job description</p>
				<p class="justified">Lorem ipsum dolor, sit amet consectetur
					adipisicing elit. Ipsum, porro reprehenderit quis quasi similique
					eum, recusandae, molestias non molestiae deleniti provident
					laboriosam corrupti impedit at odio tempore natus corporis
					delectus.</p>

				<h3 class="exp">Job #2</h3>
				<p class="light">Second Job Description</p>
				<p class="justified">Lorem ipsum dolor sit amet consectetur
					adipisicing elit. Voluptas voluptatem accusantium cupiditate
					expedita, sit, quidem obcaecati corrupti delectus cumque optio quo
					modi at. Quam, at optio accusantium nesciunt iure numquam.</p>

				<h3 class="exp">Job #3</h3>
				<p class="light">Third Job Description</p>
				<p class="justified">Lorem ipsum dolor sit amet consectetur
					adipisicing elit. Sint voluptas voluptates veritatis, mollitia
					saepe quae similique quos in ipsam nostrum dolor ullam consequuntur
					facilis dolores voluptatibus delectus est amet iure?</p>
			</div>
		</div>

		<a href="#my-home" id="scrollToTopButton" class="floating-button">
			<i class="fas fa-arrow-up"></i>
		</a>
	</section>

	<!--
    =======
    skills
    =======
  -->
	<section id="skills" class="skills section-bg">
		<div class="container" data-aos="fade-up">
			<div class="row">
				<div class="col-md-6">
					<div class="section-title">
						<h2 class="display-1 pb-5 text-center">Skills</h2>
						<p class="skillstext">그동안 배워 온 과목에 대해서 개인적으로 생각하는 과목별 상대
							수치입니다. Front 와 Back 모두 각각의 요소가 주는 흥미가 달라서 재미있었습니다. Front는 코드를 입력할
							때 마다 화면의 변화가 일어난다는 점에 흥미를 얻었고 Back은 실시간으로 변화를 감지하기 어려웠지만 반복된 수정을
							통해 성취감을 얻을 수 있었습니다.</p>
					</div>
				</div>
				<div class="col-md-6">
					<div class="skills-content">
						<div class="progress">
							<span class="skill">JAVA <i class="val">85%</i></span>
							<div class="progress-bar-wrap">
								<div class="progress-bar progress-bar1 bg-success"
									role="progressbar" aria-valuenow="85%" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
						</div>
						<div class="progress">
							<span class="skill">SQL <i class="val">80%</i></span>
							<div class="progress-bar-wrap">
								<div class="progress-bar progress-bar2 bg-success"
									role="progressbar" aria-valuenow="80%" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
						</div>
						<div class="progress">
							<span class="skill">DB MODELING <i class="val">65%</i></span>
							<div class="progress-bar-wrap">
								<div class="progress-bar progress-bar3 bg-success"
									role="progressbar" aria-valuenow="65%" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
						</div>
						<!-- </div> -->
						<!-- <div class="col-md-4"> -->
						<div class="aaa">
							<div class="progress">
								<span class="skill">HTML <i class="val">70%</i></span>
								<div class="progress-bar-wrap">
									<div class="progress-bar progress-bar4 bg-warning"
										role="progressbar" aria-valuenow="70%" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
							</div>

							<div class="progress">
								<span class="skill">CSS <i class="val">55%</i></span>
								<div class="progress-bar-wrap">
									<div class="progress-bar progress-bar5 bg-warning"
										role="progressbar" aria-valuenow="55%" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
							</div>
							<div class="progress">
								<span class="skill">JavaScript <i class="val">10%</i></span>
								<div class="progress-bar-wrap">
									<div class="progress-bar progress-bar6 bg-warning"
										role="progressbar" aria-valuenow="10%" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 
=======
Projects
=======
 -->
	<section class="practice" id="projects">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					 <div class="projects_text">
					 <span>
					 <a href='<c:url value= "/projects/projects-action.jsp"/>'>프로젝트 전체 보기</a>
					 </span>
					 </div> 
					<div id="carouselExample" class="carousel slide ">
						<div class="carousel-indicators top-100">
							<button type="button" data-bs-target="#carouselExampleCaptions"
								data-bs-slide-to="0" class="active" aria-current="true"
								aria-label="Slide 1"></button>
							<button type="button" data-bs-target="#carouselExampleCaptions"
								data-bs-slide-to="1" aria-label="Slide 2"></button>
							<button type="button" data-bs-target="#carouselExampleCaptions"
								data-bs-slide-to="2" aria-label="Slide 3"></button>
							<button type="button" data-bs-target="#carouselExampleCaptions"
								data-bs-slide-to="3" aria-label="Slide 4"></button>
						</div>

						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="row">
									<div class="col-sm-12 col-md-5 ">
										<div class="left-image">
											<img class="ex-img img-thumbnail"
												src="img/portfolio/ams/ams2.jpg" alt="...">
										</div>
									</div>
									<div class="col-sm-12 col-md-4">
										<div class=" text-container right-space">
											<h1 class="display-2">AMS.1</h1>
											<ul>
												<li>개발인원 : 개인프로젝트</li>
												<br>
												<li>개발환경 : JAVA (ECLIPSE)</li>
												<br>
												<li>계좌 관리 프로그램 프로젝트입니다. 계좌생성, 조회, 입금, 출금 등의 기능을 구현하였고
													계좌번호는 자동 생성됩니다. 총 2가지STEP 으로 구성하여 각각 CUI 와 GUI 로 구현한
													프로젝트입니다.</li>
											</ul>
											<button type="button"
												class="btn btn-outline-warning go-button ml-2"
												data-bs-toggle="modal" data-bs-target="#amsModal">간단
												설명</button>
											<button type="button"
												class="btn btn-outline-warning go-button m-2"
												data-bs-toggle="modal" data-bs-target="#amsModal">리뷰
												보기</button>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-sm-12 col-md-5 ">
										<div class="left-image">
											<img class="ex-img img-thumbnail"
												src="img/portfolio/ams/ams1.png" alt="...">
										</div>
									</div>
									<div class="col-sm-12 col-md-4">
										<div class=" text-container right-space">
											<h1 class="display-2">AMS.2</h1>
											<ul>
												<li>개발인원 : 개인프로젝트</li>
												<br>
												<li>개발환경 : JAVA (ECLIPSE)</li>
												<br>
												<li>AMS.1 이후로 GUI를 이용했습니다.<br>다소 투박한 디자인이지만 처음으로
													GUI를 사용하면서 새로운 경험을 했습니다.<br>인터페이스의 사용, DB 연동을 통해 SQL의
													테이블에 정보가 등록이 되며 한단계 발전이 되었습니다.
												</li>
											</ul>
											<button type="button"
												class="btn btn-outline-warning go-button"
												data-bs-toggle="modal" data-bs-target="#amsModal2">간단
												설명</button>
											<button type="button"
												class="btn btn-outline-warning go-button m-2"
												data-bs-toggle="modal" data-bs-target="#amsModal">리뷰
												보기</button>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-sm-12 col-md-5 ">
										<div class="left-image">
											<img class="ex-img img-thumbnail"
												src="img/portfolio/ams/ams4.jpg" alt="...">
										</div>
									</div>
									<div class="col-sm-12 col-md-4">
										<div class=" text-container right-space">
											<h1 class="display-2">CHATTING</h1>
											<ul>
												<li>개발인원 : 개인프로젝트</li>
												<br>
												<li>개발환경 : JAVA (ECLIPSE)</li>
												<br>
												<li>소켓을 이용한 방식으로 구현 된 간단한 채팅 어플리케이션입니다.<br>서버,클라이언트,빌더
													3가지로 패키지를 나누어 작업했으며 테스트는 조원과의 연결을 통해 메시지를 주고받으며 확인 했습니다.
												</li>
											</ul>
											<button type="button"
												class="btn btn-outline-warning go-button"
												data-bs-toggle="modal" data-bs-target="#chatModal">간단
												설명</button>
											<button type="button"
												class="btn btn-outline-warning go-button m-2"
												data-bs-toggle="modal" data-bs-target="#amsModal">리뷰
												보기</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExample"
							role="button" data-bs-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="visually-hidden">Previous</span>
						</a> <a class="carousel-control-next" href="#carouselExample"
							role="button" data-bs-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="visually-hidden">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!--
==============
TEAM
==============
  -->
	<section id="team" class="team section-bg">
		<div class="team-border">
			<h2 class="section-title display-3 ">Team Members</h2>
			<div class="container" data-aos="fade-up">
				<div class="team-row">
					<div class="team-member">
						<div class="team-member-info">
							<div class="team-member-box">
								<img src="img/about.jpg" alt="" class="team-member-image">
								<div class="team-member-text">
									<div class="team-member-name">윤동진</div>
									<div class="team-member-role">Back-end Developer</div>
									<div class="team-member-description">Lorem ipsum dolor
										sit amet, consectetur adipiscing elit.</div>
								</div>
							</div>
						</div>
					</div>
					<div class="team-member">
						<div class="team-member-info">
							<div class="team-member-box">
								<img src="img/about.jpg" alt="" class="team-member-image">
								<div class="team-member-text">
									<div class="team-member-name">주성민</div>
									<div class="team-member-role">Back-end Developer</div>
									<div class="team-member-description">Lorem ipsum dolor
										sit amet, consectetur adipiscing elit.</div>
								</div>
							</div>
						</div>
					</div>
					<div class="team-member">
						<div class="team-member-info">
							<div class="team-member-box">
								<img src="img/about.jpg" alt="" class="team-member-image">
								<div class="team-member-text">
									<div class="team-member-name">문준혁</div>
									<div class="team-member-role">Back-end Developer</div>
									<div class="team-member-description">Lorem ipsum dolor
										sit amet, consectetur adipiscing elit.</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- ================
      Contact
    ================= -->

	<section id="contact" class="contact section-bg">

		<div class="popup-box">

			<div class="lpopup-content row col-md-6">

				<p>s</p>
			</div>

			<div class="popup-content row col-md-6">

				<div class="section-title">
					<h2>Contact Us</h2>
				</div>
				<div class="contact-form">
					<form id="contactForm" method="post" role="form">
						<div class="form-group">
							<input type="text" class="form-control" id="name"
								placeholder="Your Name" required />
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="email"
								placeholder="Your Email" required />
						</div>
						<div class="form-group">
							<textarea class="form-control" id="message"
								placeholder="Your Message" rows="5" required></textarea>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary">Send
								Message</button>
						</div>
					</form>
				</div>
			</div>
		</div>

	</section>
	<!-- 
===============
Sign up
==============-->
	<div id="overlay" class="overlay" onclick="closePopup()"></div>

	<div id="popup" class="popup">
		<h2>
			회원가입을 위해<br>정보를 입력해주세요.
		</h2>
		<form action='<c:url value="/login/signup-action.jsp"/>'>
			<div class="container">
				<div class="form-row">
					<label for="popup-name">* 이름<br> <input type="text"
						name="name"><br>
					<br>
					</label>
				</div>
				<div class="form-row">
					<label for="popup-id">* 아이디<br> <input type="text"
						name="id"><br>
					<br>
					</label>
				</div>
				<div class="form-row">
					<label for="popup-email">* 이메일<br> <input type="text"
						name="email"><br>
					<br>
					</label>
				</div>
				<div class="form-row">
					<label for="popup-password1">* 비밀번호<br> <input
						type="password" name="passwd"><br>
					<br>
					</label>
				</div>
				<div class="form-row">
					<label for="popup-password2">* 비밀번호 확인<br> <input
						type="password"><br>
					<br>
					</label>
				</div>
				<div class="form-row"></div>
				<div class="form-row">
					<div>
						<input type="checkbox" class="agree"> <label for="agree">&nbsp
							이용약관 개인정보 수집 및 정보이용에 동의합니다.</label>
					</div>
				</div>
				<hr>
				<hr>
				<button type="submit" onclick="submitForm()">가입하기</button>
				<button type="reset" onclick="closePopup()">닫기</button>
		</form>
	</div>
	</div>

	<!-- =========
      Footer
    ========== -->
	<footer class="footer section-bg">
		<div class="container">
			<div class="footer-row">
				<div class="footer-column">
					<h3 class="footer-title">About</h3>
					<p class="footer-text">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit. Nullam venenatis dolor at lacus luctus, sed
						placerat tellus egestas.</p>
				</div>
				<div class="footer-column">
					<h3 class="footer-title">Contact</h3>
					<ul class="footer-contact-list">
						<li><i class="fas fa-map-marker-alt"></i> 123 Street, City,
							Country</li>
						<li><i class="fas fa-envelope"></i> example@example.com</li>
						<li><i class="fas fa-phone"></i> +123 456 7890</li>
					</ul>
				</div>
				<div class="footer-column">
					<h3 class="footer-title">Social</h3>
					<ul class="footer-social-list">
						<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
						<li><a href="#"><i class="fab fa-twitter"></i></a></li>
						<li><a href="#"><i class="fab fa-instagram"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="footer-bottom">
				<p class="footer-text">© 2023 Your Name. All rights reserved.</p>
			</div>
		</div>
	</footer>






	<!-- AMS Modal -->
	<div class="modal fade bg-gradient" id="amsModal" tabindex="-1"
		aria-labelledby="amsModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered ">
			<div class="modal-content bg-black">
				<div class="modal-header">
					<h5 class="modal-title" id="amsModalLabel">AMS 1</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div id="amsCarouselModal" class="carousel slide "
						data-bs-ride="false">
						<div class="carousel-inner">
							<div class="carousel-item active ams-slide">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams/ams1/cui1.png"
												class="card-img-top" alt="AMS Image 1">
											<div class="card-body">
												<h5 class="card-title">CUI 시작화면</h5>
												<p class="card-text">키보드 입력으로 5개의 메뉴 중 선택하여 메뉴로 진입합니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="card">
									<img src="img/portfolio/ams/ams1/chord1.png"
										class="card-img-top" alt="AMS Image 2">
									<div class="card-body">
										<h5 class="card-title">시작화면 코드</h5>
										<p class="card-text">테스트를 위한 더미데이터 삽입, scanner로 입력 받은 값에
											따라 구현 했습니다.</p>
									</div>
								</div>
							</div>
							<!-- 추가 이미지 슬라이드 -->
							<div class="carousel-item">
								<div class="card">
									<img src="img/portfolio/ams/ams1/cui2.png" class="card-img-top"
										alt="AMS Image 3">
									<div class="card-body">
										<h5 class="card-title">계좌 생성 화면</h5>
										<p class="card-text">차례대로 데이터를 입력하여 계좌를 생성하고 현재 등록된 계좌의
											수량을 확인시켜줍니다.</p>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="card">
									<img src="img/portfolio/ams/ams1/chord2.png"
										class="card-img-top" alt="AMS Image 4">
									<div class="card-body">
										<h5 class="card-title">계좌 생성 코드</h5>
										<p class="card-text">1 과 2의 입력으로 구분하여 입출금 계좌와 마이너스 계좌의 생성을
											구현합니다. 입력된 데이터는 Account 클래스와 그 자식클래스인 MinusAccount 클래스에 저장 될
											수 있습니다.</p>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="card">
									<img src="img/portfolio/ams/ams1/cui3.png" class="card-img-top"
										alt="AMS Image 5">
									<div class="card-body">
										<h5 class="card-title">계좌 조회 화면</h5>
										<p class="card-text">처음 생성했던 더미데이터가 잘 들어갔는지 확인 가능하며
											입출금,마이너스 계좌는 대출금 으로 구분됩니다.</p>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="card">
									<img src="img/portfolio/ams/ams1/chord3.png"
										class="card-img-top" alt="AMS Image 6">
									<div class="card-body">
										<h5 class="card-title">계좌 조회 코드</h5>
										<p class="card-text">instanceof 를 이용하여 입출금 계좌와 마이너스 계좌를
											구분하여 그에 맞는 정보를 출력 해 줍니다.</p>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="card">
									<img src="img/portfolio/ams/ams1/cui4.png" class="card-img-top"
										alt="AMS Image 6">
									<div class="card-body">
										<h5 class="card-title">입금 화면</h5>
										<p class="card-text">계좌번호로 지정 된 계좌에 입금 후 잔액을 보여주며 초기화면으로
											돌아갑니다.</p>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="card">
									<img src="img/portfolio/ams/ams1/chord4.png"
										class="card-img-top" alt="AMS Image 6">
									<div class="card-body">
										<h5 class="card-title">입금 화면 코드</h5>
										<p class="card-text">입력받은 계좌번호가 null이 아닐 시 작동 가능하며 입력 받은
											금액을 기존 잔액에 더해 출력합니다.</p>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="card">
									<img src="img/portfolio/ams/ams1/cui5.png" class="card-img-top"
										alt="AMS Image 6">
									<div class="card-body">
										<h5 class="card-title">출금 화면</h5>
										<p class="card-text">입금과 비슷한 패턴이며 마찬가지로 출금 후 잔액을 보여주며
											초기화면으로 돌아갑니다.</p>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="card">
									<img src="img/portfolio/ams/ams1/chord5.png"
										class="card-img-top" alt="AMS Image 6">
									<div class="card-body">
										<h5 class="card-title">출금 화면 코드</h5>
										<p class="card-text">검색 된 계좌의 출금할 금액의 데이터를 입력받아 잔액에서 빼는
											방법으로 구현됩니다.</p>
									</div>
								</div>
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#amsCarouselModal" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#amsCarouselModal" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>




	<!-- AMS2 Modal -->
	<div class="modal fade bg-gradient" id="amsModal2" tabindex="-1"
		aria-labelledby="amsModalLabel2" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered ">
			<div class="modal-content bg-black">
				<div class="modal-header">
					<h5 class="modal-title" id="amsModalLabel2">AMS 2</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div id="amsCarouselModal2" class="carousel slide"
						data-bs-ride="false">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/sql.png" style="float: left;"
												class="card-img-top" alt="AMS 2 Image 1">
											<div class="card-body">
												<h5 class="card-title">SQL</h5>
												<hr>
												<p class="card-text">Account 테이블을 생성하고 계좌번호는 시퀀스로
													1000번부터 1씩 증가하도록 구현합니다. 계좌번호는 PrimaryKey로 설정합니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/main.png" class="card-img-top"
												alt="AMS 2 Image 2">
											<div class="card-body">
												<h5 class="card-title">메인 화면</h5>
												<hr>
												<p class="card-text">GUI로 구현 된 AMS 2의 메인 화면입니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/mainchord.png"
												class="card-img-top" alt="AMS 2 Image 3">
											<div class="card-body">
												<h5 class="card-title">메인 코드</h5>
												<hr>
												<p class="card-text">AmsFrame클래스에서 GridBagLayout을 이용하여
													GUI를 구현하고 Application 클래스에서는 실행을 합니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/addgui.png" class="card-img-top"
												alt="AMS 2 Image 4">
											<div class="card-body">
												<h5 class="card-title">계좌 생성 화면</h5>
												<hr>
												<p class="card-text">시퀀스로 설정 된 계좌번호는 자동 생성되며 입력 후 계좌 명단에
													추가가 되며 정상 등록 메시지를 출력합니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/addchord.png"
												class="card-img-top" alt="AMS 2 Image 3">
											<div class="card-body">
												<h5 class="card-title">계좌 생성 구현</h5>
												<hr>
												<p class="card-text">GUI의 Choice는 Enum 타입의 AccountType에
													작성했으며 어떤 Choice를 선택하는지 에 따라 입출금과 마이너스 계좌를 등록합니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/addchord2.png"
												class="card-img-top" alt="AMS 2 Image 3">
											<div class="card-body">
												<h5 class="card-title">계좌 생성 코드</h5>
												<hr>
												<p class="card-text">입력값에 바인드변수를 지정하며 계좌번호는 시퀀스로 설정되어
													시퀀스.NEXTVAL을 사용합니다. SQL 테이블에 Account와 Minus_Account로 계좌의
													타입을 별도로 할당시킵니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/sn.png" class="card-img-top"
												alt="AMS 2 Image 3">
											<div class="card-body">
												<h5 class="card-title">계좌번호 조회 화면</h5>
												<hr>
												<p class="card-text">계좌 입력 후 조회 시 입력한 번호에 해당하는 계좌정보만
													출력합니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/sne.png" class="card-img-top"
												alt="AMS 2 Image 3">
											<div class="card-body">
												<h5 class="card-title">잘못된 계좌번호 조회 화면</h5>
												<hr>
												<p class="card-text">만약 잘못된 계좌를 눌렀을 경우 한번 더 안내를 하게됩니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/snchord.png"
												class="card-img-top" alt="AMS 2 Image 3">
											<div class="card-body">
												<h5 class="card-title">계좌번호 조회 구현</h5>
												<hr>
												<p class="card-text">instanceof를 이용해서 마이너스계좌와 입출금계좌를
													구분합니다. 입력값이 비어있거나 잘못된 입력에 대해서는 메시지를 보여줍니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/snchord2.png"
												class="card-img-top" alt="AMS 2 Image 3">
											<div class="card-body">
												<h5 class="card-title">계좌번호 조회 코드</h5>
												<hr>
												<p class="card-text">계좌번호로 들어올 값에 바인드 변수를 줍니다. 입력될 값에 대해
													변수를 지정합니다 instanceof를 이용해서 각각 입출금과 마이너스 계좌로 데이터를 전송시킵니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/sname.png" class="card-img-top"
												alt="AMS 2 Image 3">
											<div class="card-body">
												<h5 class="card-title">예금주 조회 화면</h5>
												<hr>
												<p class="card-text">이름으로 계좌를 조회하며 계좌번호를 입력하는
													Text-field는 비활성화를 시킵니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/snamee.png" class="card-img-top"
												alt="AMS 2 Image 3">
											<div class="card-body">
												<h5 class="card-title">잘못된 예금주 조회 화면</h5>
												<hr>
												<p class="card-text">올바르지 않은 이름을 입력하면 오류 메시지를 출력시킵니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/snamechord.png"
												class="card-img-top" alt="AMS 2 Image 3">
											<div class="card-body">
												<h5 class="card-title">예금주 조회 구현</h5>
												<hr>
												<p class="card-text">이름의 중복은 boolean으로 확인하며 공백 입력에 대한
													에러를 해결합니다. 입력값이 공백이 아닐 경우에는 오버라이딩 된 toString 메소드를 사용하며 입출금과
													마이너스 계좌를 구분하는 기준을 "대출금"에 둡니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/snamechord2.png"
												class="card-img-top" alt="AMS 2 Image 3">
											<div class="card-body">
												<h5 class="card-title">예금주 조회 코드</h5>
												<hr>
												<p class="card-text">예금주에 바인드변수 할당하여 구현합니다. 리턴타입은
													Account클래스 타입의 ArrayList로 하며 스코프를 고려해 메소드 처음에 초기화를 시킵니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/remove.png" class="card-img-top"
												alt="AMS 2 Image 3">
											<div class="card-body">
												<h5 class="card-title">계좌 삭제 화면</h5>
												<hr>
												<p class="card-text">계좌번호에 일치하는 계좌를 삭제하고 계좌리스트 현황을 아래에
													출력합니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/removechord.png"
												class="card-img-top" alt="AMS 2 Image 3">
											<div class="card-body">
												<h5 class="card-title">계좌 삭제 구현</h5>
												<hr>
												<p class="card-text">입력한 계좌번호를 매개변수로 removeAccount 메소드를
													호출합니다. 공란일 경우에 버그는 메시지를 출력하며 다른 필드를 비활성화시킵니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/ams2/removechord2.png"
												class="card-img-top" alt="AMS 2 Image 3">
											<div class="card-body">
												<h5 class="card-title">계좌 삭제 코드</h5>
												<hr>
												<p class="card-text">계좌번호에 바인드변수를 할당하며 리턴타입을 boolean으로
													구현합니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#amsCarouselModal2" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#amsCarouselModal2" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- AMS PROJECT END -->



	<div class="modal fade bg-gradient" id="chatModal" tabindex="-1"
		aria-labelledby="chattingModal" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered ">
			<div class="modal-content bg-black">
				<div class="modal-header">
					<h5 class="modal-title" id="chattingModal">ch</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div id="chatting_carousel_modal" class="carousel slide"
						data-bs-ride="false">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/chatting/1.png" style="float: left;"
												class="card-img-top" alt="AMS 2 Image 1">
											<div class="card-body">
												<h5 class="card-title">CHATTING 메인화면</h5>
												<hr>
												<p class="card-text">AMS2 때와 동일하게 GUI로 구현 된 메인 화면입니다.
													입장시 안내 메시지를 출력하며 채팅은 전체 채팅과 접속자 중 선택하여 보내는 DM 기능으로 구성되어
													있습니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/chatting/2.png" class="card-img-top"
												alt="AMS 2 Image 4">
											<div class="card-body">
												<h5 class="card-title">닉네임 입력 후 입장</h5>
												<hr>
												<p class="card-text">설정한 닉네임으로 입장하면 우측에 현재 접속자 목록을 불러와서
													보여줍니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/chatting/5.png" class="card-img-top"
												alt="AMS 2 Image 4">
											<div class="card-body">
												<h5 class="card-title">메시지 전송과 DM기능</h5>
												<hr>
												<p class="card-text">메시지 전송 시 모두에게 출력이 되며 하단의 choice에
													접속자를 선택하여 DM을 보냅니다. 수신한 사람은 DM임을 알 수 있게 안내메시지를 함께 출력합니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/chatting/1-1-1.png"
												class="card-img-top" alt="AMS 2 Image 2">
											<div class="card-body">
												<h5 class="card-title">(서버)인터페이스 사용</h5>
												<hr>
												<p class="card-text">응답에 대한 명세를 함으로써 프로그램을 조금 더 유연하게
													만듭니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/chatting/c2.png" class="card-img-top"
												alt="AMS 2 Image 3">
											<div class="card-body">
												<h5 class="card-title">(서버 핸들러)코드내용</h5>
												<hr>
												<p class="card-text">서버를 구동하기 위한 클래스입니다. 포트번호는 상수로 선언,
													콘솔에는 디버깅 메시지를 출력합니다. 접속클라이언트는 HashMap으로 관리하고 client의 닉네임은
													key로 설정합니다. 클라이언트 등록,제거,메시지 관련 메서드를 정의하고, 데이터는 소켓을 통해
													주고받습니다. Thread를 상속받은 ChatHandler 클래스와 연계됩니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/chatting/MessageBuilder.png"
												class="card-img-top" alt="AMS 2 Image 4">
											<div class="card-body">
												<h5 class="card-title">메시지에 대한 분리작업</h5>
												<hr>
												<p class="card-text">메시지의 구성과 분석을 담당합니다. Enum에서 CONNECT,
													DIS_CONNECT, CHAT_MESSAGE, USER_LIST, DM_MESSAGE 로 속성을
													정의해둡니다. Enum으로 정의된 속성과 메시지를 토큰으로 연결하는 메서드와 토큰을 분리하는 메서드를
													구현합니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<img src="img/portfolio/chatting/ChatHandler.png"
												class="card-img-top" alt="AMS 2 Image 4">
											<div class="card-body">
												<h5 class="card-title">(챗 핸들러)연결메시지 응답처리</h5>
												<hr>
												<p class="card-text">핸들러의 주요 메서드이며 클라이언트의 메시지를 파싱해서 구분하며
													Enum에 지정해놓은 속성에 따라 각각 인터페이스를 구현한 클래스의 메서드를 호출합니다. DM의 경우
													sendMessage메서드를 이용해서 구현합니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#chatting_carousel_modal" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#chatting_carousel_modal" data-bs-slide="next">
							<span class="carousel-control-next-icon " aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- chatting card end -->







	<script>
    // Enable carousel functionality for each project
    const projectCarousels = document.querySelectorAll('.carousel');
    projectCarousels.forEach((carousel) => {
      new bootstrap.Carousel(carousel);
    });
  </script>

	<script src="assets/js/progress.js"></script>



</body>

</html>