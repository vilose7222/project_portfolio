package ezen.portfolio.pictures.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import ezen.portfolio.common.dao.DaoFactory;
import ezen.portfolio.pictures.dto.Pictures;

public class JdbcPicturesDao implements PicturesDao {

	private DataSource dataSource;

	public JdbcPicturesDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public List<Pictures> findByAll() {
		List<Pictures> list = null;
		Pictures pictures = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT picture_id,")
			.append(" picture_path,")
			.append(" picture_desc,")
			.append(" pp.p_id id")
			.append(" FROM pictures p")
			.append(" JOIN project pp")
			.append(" ON p.pj_id = pp.p_id");

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			list = new ArrayList<Pictures>();
			while (rs.next()) {
				int pId = rs.getInt("picture_id");
				String path = rs.getString("picture_path");
				String pDesc = rs.getString("picture_desc");
				int pjId = rs.getInt("id");
				pictures = new Pictures();
				pictures.setPicture_id(pId);
				pictures.setPicture_path(path);
				pictures.setDescription(pDesc);
				pictures.setPj_id(pjId);
				list.add(pictures);
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (Exception e) {
			}
		}
		return list;
	}

	@Override
	public List<Pictures> getProjectPictures(int projectId) {
		List<Pictures> list = null;
		Pictures pictures = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT  picture_path, p.description des, pp.p_id id")
		  .append(" FROM pictures p")	
		  .append(" JOIN project pp")
		  .append(" ON p.pj_id = pp.p_id")
		  .append(" WHERE pp.p_id = ?");
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setInt(1, projectId);
			rs = pstmt.executeQuery();
			list = new ArrayList<Pictures>();
			while (rs.next()) {
				String path = rs.getString("picture_path");
				String pDesc = rs.getString("des");
				int pjId = rs.getInt("id");
				pictures = new Pictures();
				pictures.setPicture_path(path);
				pictures.setDescription(pDesc);
				pictures.setPj_id(pjId);
				list.add(pictures);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		}finally{
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (Exception e) {
			}
		}
		return list;
	}

	public static void main(String[] args) {

		PicturesDao picturesDao = DaoFactory.getInstance().getPicturesDao();
		List<Pictures> list = picturesDao.getProjectPictures(1);
		for (Pictures pictures : list) {
			System.out.println(pictures);
		}
	}
}
