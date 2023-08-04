package ezen.portfolio.project.dao;

import java.util.List;

import ezen.portfolio.project.dto.Project;
 /**
  * 프로젝트 관리 기능 명세 (CRUD기능)
  * @author 윤동진
  *
  */
public interface ProjectDao {
//	  void addProject(Project project);               // 프로젝트 추가
//    void updateProject(Project project);            // 프로젝트 수정
//    void deleteProject(int projectId);              // 프로젝트 삭제
//    Project getProjectById(int projectId);          // 프로젝트 번호로 프로젝트 가져오기
    
	  List<Project> getAllProjects();      			// 모든 프로젝트 조회 
}
