package ezen.portfolio.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import ezen.portfolio.common.dao.DaoFactory;
import ezen.portfolio.project.dto.Project;
/**
 * 프로젝트 관리 인터페이스 구현체
 * @author 윤동진
 *
 */
public class JdbcProjectDao implements ProjectDao {
	private DataSource dataSource;
	 
	public JdbcProjectDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
//	@Override  
//	public void addProject(Project project) {
//	}
//	@Override
//	public void updateProject(Project project) {
//
//	}
//	
//	@Override
//	public void deleteProject(int projectId) {
//
//	}
//	@Override
//	public Project getProjectById(int projectId) {
//	}

	@Override
	public List<Project> getAllProjects() {
		List<Project> list = null;
		Project project = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT p_id,")
			.append(" name,")	
			.append(" description,")	
			.append(" participation,")	
			.append(" TO_CHAR(start_date,'YYYY-MM-DD DAY')startDate,")
		 	.append(" TO_CHAR(end_date,'YYYY-MM-DD DAY')endDate,")
			.append(" skills,")
			.append(" picture")
			.append(" FROM project")
			.append(" ORDER BY p_id ASC");
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con= dataSource.getConnection();
			pstmt = con.prepareStatement(sb.toString());
//			System.out.println(sb.toString());
			rs = pstmt.executeQuery();
			list = new ArrayList<Project>();
			while (rs.next()) {
				int pId = rs.getInt("p_id");
				String pName = rs.getString("name");
				String pDesc = rs.getString("description");
				int pMember = rs.getInt("participation");
				String startDate = rs.getString("startDate");
				String endDate = rs.getString("endDate");
				String skills = rs.getString("skills");
				String picture = rs.getString("picture");
				
				project = new Project();
			
				project.setP_id(pId);
				project.setName(pName);
				project.setDescription(pDesc);
				project.setParticipation(pMember);
				project.setStart_date(startDate);
				project.setEnd_date(endDate);
				project.setSkills(skills);
				project.setPicture(picture);
				list.add(project);
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null)rs.close();
				if (pstmt != null)pstmt.close();
				if (con != null)con.close();
			} catch (Exception e) {}
		}
		return list;
	}

	
	//디버깅용 메인 메서드
	public static void main(String[] args) {
		ProjectDao projectDao = DaoFactory.getInstance().getProjectDao();
		List<Project> list = projectDao.getAllProjects();
		for (Project project : list) {
			System.out.println(project);
		}
	}

}
