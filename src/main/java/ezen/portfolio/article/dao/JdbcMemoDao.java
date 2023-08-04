package ezen.portfolio.article.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import ezen.portfolio.article.dto.Memo;
import ezen.portfolio.common.dao.DaoFactory;

public class JdbcMemoDao implements MemoDao {
	private DataSource dataSource;
	 
	public JdbcMemoDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	/**
	 * 게시글 작성
	 */
	@Override
	public boolean createMemo(Memo memo) {
		boolean success = false;
        StringBuilder sb = new StringBuilder();
        sb.append(" INSERT INTO memo(")
            .append(" m_id,")
            .append(" content,")
            .append(" member_id)")
            .append(" VALUES (memo_id_seq.NEXTVAL, ?, ?)");
        
        Connection con = null;
        PreparedStatement pstmt = null;
        try {
            con = dataSource.getConnection();
            pstmt = con.prepareStatement(sb.toString());
            
            pstmt.setString(1, memo.getContent());
            pstmt.setString(2, memo.getMemberId());
            pstmt.executeUpdate();
            success = true;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return success;
	}
	

	public List<Memo> findByAll() {
		List<Memo> list = null;
		
		Memo memo = null;
		StringBuilder sb = new StringBuilder();
		  sb.append(" SELECT")
			.append(" 	to_char(m1.write_date, 'yyyy-MM-DD')writeDate,")	
			.append(" 	m1.content   content,")	
			.append(" 	m2.name      member_name")	
			.append(" FROM")
			.append("   memo m1")
		    .append("   JOIN member m2 ON m1.member_id = m2.id")
			.append(" 	ORDER BY   m1.write_date DESC");
				
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con= dataSource.getConnection();
			pstmt = con.prepareStatement(sb.toString());
			System.out.println(sb.toString());
			rs = pstmt.executeQuery();
			list = new ArrayList<Memo>();
			while (rs.next()) {
			
				String writeDate = rs.getString("writeDate");
				String content = rs.getString("content");
				//웹페이지 줄바꿈처리
				content = content.replaceAll("\r","<br>");
				String memberName = rs.getString("member_name");
				memo = new Memo();
				memo.setWriteDate(writeDate);
				memo.setContent(content);
				memo.setMemberName(memberName);
				list.add(memo);
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
	
	@Override
	public int getCountAll() {
		int count = 0;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT COUNT(*) cnt")
		  .append(" FROM memo");
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt("cnt");
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (con != null)  con.close();
			} catch (Exception e) {}
		}
		return count;
	}
	
	
	@Override
	public List<Memo> findByAll(int requestPage, int elementSize) {
		List<Memo>  list = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT  page, write_date,    content,    member_name")
		  .append(" FROM (  SELECT  ceil(ROWNUM / ?) page,   write_date,   content,   member_name")
		  .append("         FROM (  SELECT   to_char(m1.write_date, 'yyyy-MM-DD HH24:MI') write_date, m1.content content,  m2.name member_name")
		  .append("                 FROM memo m1")
		  .append("                     JOIN member m2 ON m1.member_id = m2.id")
		  .append("                 ORDER BY m_id DESC) )")
		  .append(" WHERE  page = ?");
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setInt(1, elementSize);
			pstmt.setInt(2, requestPage);
			rs = pstmt.executeQuery();
			list = new ArrayList<Memo>();
			while (rs.next()) {			
				String writeDate = rs.getString("write_date");
				String content = rs.getString("content");
				// 웹 페이지 줄바꿈 처리
				content = content.replaceAll("\r", "<br>");
				String memberName = rs.getString("member_name");
				Memo memo = new Memo();
				memo.setWriteDate(writeDate);
				memo.setContent(content);
				memo.setMemberName(memberName);
				list.add(memo);
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (con != null)  con.close();
			} catch (Exception e) {}
		}
		return list;
	}
	
	public static void main(String[] args) {
		MemoDao memoDao = DaoFactory.getInstance().getMemoDao();
		Memo memo = new Memo();
		memo.setContent("테스트 입니다..");
		memo.setMemberId("park");
		memoDao.createMemo(memo);
		
		System.out.println("등옥 완료..");
		List<Memo> list =   memoDao.findByAll();
		 for (Memo memo2 : list) {
			System.out.println(memo2);
		}
	}
	
	

}
