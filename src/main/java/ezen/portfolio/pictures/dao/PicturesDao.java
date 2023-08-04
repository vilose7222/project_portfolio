package ezen.portfolio.pictures.dao;

import java.util.List;

import ezen.portfolio.pictures.dto.Pictures;

/**
 * 설명과 추가사진을 위한 추상메서드 명세
 * @author 윤동진
 *
 */
public interface PicturesDao {
	public List<Pictures> findByAll();
	public List<Pictures> getProjectPictures(int projectId);
}
