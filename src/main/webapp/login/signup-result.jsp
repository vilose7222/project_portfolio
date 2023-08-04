<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:useBean id="member" class="ezen.portfolio.member.dto.Member" scope="session"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<script>
alert('가입 완료!! \n 아이디: ${member.id} \n ${member.name}님, 다시 로그인 해주세요!');
window.location.href = "/index.jsp";
</script>
</body>
</html>
