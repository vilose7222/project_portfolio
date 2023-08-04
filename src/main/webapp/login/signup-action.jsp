<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="ezen.portfolio.common.dao.DaoFactory"%>
<%@page import="ezen.portfolio.member.dao.JdbcMemberDao"%>
<%@page import="ezen.portfolio.member.dao.MemberDao"%>

<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="member" class="ezen.portfolio.member.dto.Member" scope="session"/>
<jsp:setProperty property="*" name="member"/>

<%
MemberDao memberDao = DaoFactory.getInstance().getMemberDao();
memberDao.create(member);
memberDao = DaoFactory.getInstance().getMemberDao();
request.setAttribute("member", member);
//회원 가입 정보를 보여주는 페이지로 이동(Dispatch) 
response.sendRedirect("signup-result.jsp");
%>
