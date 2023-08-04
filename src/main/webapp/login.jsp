<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="assets/css/login.css">
  <link rel="stylesheet" href="assets/css/styles.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    integrity="sha512-..." crossorigin="anonymous" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
    crossorigin="anonymous"></script>
   <script src="assets/js/nav.js"></script>
</head>
<body>
<jsp:include page="/modules/nav.jsp"></jsp:include>

  <main class="form-signin w-100 m-auto">
    <form action="<c:url value="/login/login-action.jsp"/>" method="get">
      <div class="d-flex justify-content-center">
        <img class="mb-4" src="img/logo.png" alt="" width="100" height="80">
      </div>
      <h1 class="h3 mb-3 fw-normal text-center">Please sign in</h1>
      <div class="form-floating">
        <input type="text" class="form-control" placeholder="name@example.com" name="uid" value=${cookie.saveId.value} >
        <label for="floatingInput">ID</label>
      </div>
      <div class="form-floating">
        <input type="password" class="form-control" placeholder="Password" name="upw">
        <label for="floatingPassword">Password</label>
      </div>
      <div class="checkbox mb-3">
        <label>
        
          <input type="checkbox"  name="saveId" <c:if test="${not empty cookie.saveId.value }">checked  </c:if>                 ><label for="floatingId"> ID 저장
        </label>
      </div>
      <a href="#" onClick="openPopup(event)"><button class="w-100 btn btn-lg btn-primary mb-1" type="button" >SIGN UP</button></a>
      <button class="w-100 btn btn-lg btn-primary" type="submit">LOG IN</button>
      <p class="mt-5 mb-3 text-muted"> &copy; PORTFOLIO<br>아이디: qwe / 비밀번호: qwe</p>
    </form>
  </main>
  
  
  <jsp:include page="popup.jsp"></jsp:include>
  
  
</body>
</html>