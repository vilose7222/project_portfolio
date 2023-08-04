<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
    crossorigin="anonymous"></script>
  <script src="/assets/js/nav.js"></script>
  <title>Project_Portfolio_jsp</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
  <link rel="stylesheet" href="/assets/css/styles.css">
  <link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">

<style>

@font-face {
  font-family: "euljiro";
  src: url("/assets/fonts/BMEULJIROTTF.ttf");
}
*{
font-family: "euljiro";
}
li{
font-weight:bold;
}
.navbar{

background: gray;

}

</style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
  <div class="container">
    <a class="navbar-brand ml-auto" href="#">Portfolio.DJ</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="<c:url value="/"/>">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<c:url value="/#about_me"/>">About Me</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<c:url value="/#skills"/>">Skills</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<c:url value="/#projects"/>">Projects</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<c:url value="/#team"/>">Team</a>
        </li>
      </ul>
    </div>
    <ul class="navbar-nav ml-auto member-rep ">
      <li class="nav-item  sign-up ">
        <a class="nav-link" href="/article/article3.jsp" ><i class="fas fa-book-open"></i> MEMO</a>
      </li>
     
      
      
   <li class="nav-item log-in"><c:choose>
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
</nav>  <jsp:include page="/popup.jsp"></jsp:include>
         
</body>
    
