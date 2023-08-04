<%@page import="ezen.portfolio.member.dto.Member"%>
<%@page import="ezen.portfolio.article.dao.MemoDao"%>
<%@page import="ezen.portfolio.common.dao.DaoFactory"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="memo" class ="ezen.portfolio.article.dto.Memo" scope="request"/>
<jsp:setProperty  name="memo" property="*"/>  <%--브라우저에서 넘어오는 parameter데이터를 가져오는 것..(전부가져오는게아니다) --%>

<jsp:setProperty name="memo" property="memberId" value="${loginMember.id}"/>
<jsp:setProperty name="memo" property="memberName" value="${loginMember.name}"/>

<%
//memo.setContent(memo.getContent().replaceAll("\n","<br>"));

MemoDao memoDao = DaoFactory.getInstance().getMemoDao();

//Member loginMember = (Member)session.getAttribute("loginMember");
//memo.setMemberId(loginMember.getId());

memoDao.createMemo(memo);
response.sendRedirect("/article/article3.jsp");
//전체목록으로 자동 요청
%>



