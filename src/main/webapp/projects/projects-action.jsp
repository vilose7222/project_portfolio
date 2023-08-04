<%@page import="ezen.portfolio.pictures.dto.Pictures"%>
<%@page import="ezen.portfolio.pictures.dao.PicturesDao"%>
<%@page import="ezen.portfolio.project.dto.Project"%>
<%@page import="java.util.List"%>
<%@page import="ezen.portfolio.project.dao.ProjectDao"%>
<%@page import="ezen.portfolio.common.dao.DaoFactory"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
request.setCharacterEncoding("utf-8");
  ProjectDao projectDao = DaoFactory.getInstance().getProjectDao();
  List<Project> list = projectDao.getAllProjects();
  request.setAttribute("list", list);
  
  Project project = new Project();

  PicturesDao picturesDao = DaoFactory.getInstance().getPicturesDao();
%>




<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title></title>
<style>
.pjsection{
background: white;
}

h2{
text-align:center;
}
.description{
    width: 80vw;
    margin: 0 auto;
    padding-top:160px;
      box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.2);
  }
  li>img{
  width:500px;
  height:600px;
  }
  .project_desc{
  margin-bottom: 30px;
  }
</style>
</head>
<body>
<jsp:include page="/modules/nav.jsp"></jsp:include>

<section class="pjsection">
<div class="description">

<hr>
<hr>
<h2>안녕하세요 프로젝트에 대한 상세 설명입니다...</h2>

<ul>
<c:forEach var="project" items="${list}">
  <li>
    <strong>프로젝트 번호:</strong> ${project.p_id}<br>
    <strong>프로젝트 명:</strong> ${project.name}<br>
    <strong>프로젝트 설명:</strong> ${project.description}<br>
    <strong>참여 인원:</strong> ${project.participation}<br>
    <strong>시작 일자:</strong> ${project.start_date}<br>
    <strong>종료 일자:</strong> ${project.end_date}<br>
    <strong>사용 기술:</strong> ${project.skills}<br>
    <strong>사진 목록:</strong><br>
    <ul>
      <c:forEach var="picture" items="${DaoFactory.getInstance().getPicturesDao().getProjectPictures(project.p_id)}">
        <li class="project_desc">
          <img src="${picture.picture_path}" />
          <strong>사진 설명:</strong> ${picture.description}
        </li>
        
          
      </c:forEach>
  </li>
</c:forEach>



</ul>


</div>
</section>

<%-- 

  <c:forEach var="project" items="${list}">
    <li>
      <strong>프로젝트 번호:</strong> ${project.p_id}<br>
      <strong>프로젝트 명:</strong> ${project.name}<br>
      <img src="${project.picture}"> </img>
      <strong>프로젝트 설명:</strong> ${project.description}<br>
      <strong>참여 인원:</strong> ${project.participation}<br>
      <strong>시작 일자:</strong> ${project.start_date}<br>
      <strong>종료 일자:</strong> ${project.end_date}<br>
      <strong>사용 기술:</strong> ${project.skills}<br><hr>
    </li>
  </c:forEach>
--%>




</body>
</html>