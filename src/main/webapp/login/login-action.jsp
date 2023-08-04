<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="ezen.portfolio.common.dao.DaoFactory"%>
<%@page import="ezen.portfolio.member.dto.Member"%>
<%@page import="ezen.portfolio.member.dao.JdbcMemberDao"%>
<%@page import="ezen.portfolio.member.dao.MemberDao"%>


<%
request.setCharacterEncoding("utf-8");
String uid = request.getParameter("uid");
String upw = request.getParameter("upw");

String saveId = request.getParameter("saveId");


System.out.println("아이디 : " + uid);
System.out.println("비밀번호 : " + upw);

MemberDao memberDao = DaoFactory.getInstance().getMemberDao();
Member loginMember = memberDao.findByUser(uid, upw);
if(loginMember != null){
	if(saveId != null){
		Cookie saveCookie = new Cookie("saveId", URLEncoder.encode(loginMember.getId(),"utf-8"));
		saveCookie.setPath("/");
		saveCookie.setMaxAge(60*60*24*100);
		response.addCookie(saveCookie);
	}
}
request.setAttribute("loginMember", loginMember);
%>

<c:choose>
		<c:when test="${empty loginMember}">
			<script>
				//추후 JavaScript2에서 Ajax를 이용한 비동기 통신 처리 예정
				alert('아이디와 비밀번호를 확인하세요');
				location.href = '<c:url value="/login.jsp"/>';
			</script>
		</c:when>
		<c:otherwise>
			<c:set var="loginMember" value="${loginMember }" scope="session"/>
			<c:redirect url="/index.jsp"/>		
		</c:otherwise>
</c:choose>
			<%-- 	<c:set var="loginMember" value="${loginMember}" scope="session"/>
			 <c:set var="loginId" value="${loginMember.id }" scope="session"/>
			--%>	