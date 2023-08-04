package ezen.portfolio.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import ezen.portfolio.member.dto.Member;

/**
 * RDB를 통해 회원  저장 및 관리(검색, 수정, 삭제) 구현체
 * @author 윤동진
 */
public class JdbcMemberDao implements MemberDao {

	
	private DataSource dataSource;
 
	public JdbcMemberDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}


	/**
	 * 신규회원 등록
	 */
	public boolean create(Member member) {
		boolean success = false;
		StringBuilder sb = new StringBuilder();
		sb.append(" INSERT INTO member(")
		  .append("id,")
		  .append("passwd,")
		  .append("name,")
		  .append("email)")
		  .append(" VALUES (?, ?, ?, ?)");
		PreparedStatement pstmt = null;
		Connection con = null;
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sb.toString()); 
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getEmail());
			pstmt.executeUpdate();
			success = true;
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				
				if (pstmt != null)
					pstmt.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return success;
	}
/**
 * 회원 정보 확인 메서드
 */ 
	public Member findByUser(String id, String passwd) {
		Member member = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT id, name, TO_CHAR(regdate,'YYYY-MM-DD DAY')regdate")
				.append(" FROM member")
				.append(" WHERE id= ? AND passwd= ?");
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con= dataSource.getConnection();
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String uid = rs.getString("id");
				String uname = rs.getString("name");
				String regdate = rs.getString("regdate");
				member = new Member();
				member.setId(uid);
				member.setName(uname);
				member.setRegdate(regdate);
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
		return member;
	}

/**
 * 전체 회원 목록 조회 메서드	
 */
	public List<Member> findByAll() {
		List<Member> list = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT id, name, email, TO_CHAR(regdate,'YYYY-MM-DD DAY')regdate")
				.append(" FROM member");
	
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con= dataSource.getConnection();
			pstmt = con.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			list = new ArrayList<Member>();
			while (rs.next()) {
				String uid = rs.getString("id");
				String uname = rs.getString("name");
				String email = rs.getString("email");
				String regdate = rs.getString("regdate");
				Member member = new Member();
				member.setId(uid);
				member.setName(uname);
				member.setEmail(email);
				member.setRegdate(regdate);
				list.add(member);
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
	
	
	
	
	public static void main(String[] args) throws Exception {
//		Member member = new Member("vilose7","1111","윤동진","viloww22@gmail.com",null);
//		Member member = new Member("vilo222","1111","최동진","vil22w22@gmail.com",null);
//		MemberDao dao = new JdbcMemberDao();
//		dao.create(member);
//		System.out.println("등록완료");
		
//		Member loginMember = dao.findByUser("bangry", "1111");
//		System.out.println(loginMember);
		
		
		
	}



}
