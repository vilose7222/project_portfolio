package ezen.portfolio.pictures.dto;

/**
 * 프로젝트에 대한 추가 사진과 설명을 위한 클래스
 * @author 윤동진
 *
 */
public class Pictures {
	int picture_id;  		//참조할 프로젝트 번호
	String picture_path;    // 프로젝트 사진
	String description;		// 해당 사진에 대한 설명
	int pj_id;
	
	public Pictures() {}

	public int getPicture_id() {
		return picture_id;
	}

	public void setPicture_id(int picture_id) {
		this.picture_id = picture_id;
	}

	public String getPicture_path() {
		return picture_path;
	}

	public void setPicture_path(String picture_path) {
		this.picture_path = picture_path;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPj_id() {
		return pj_id;
	}

	public void setPj_id(int pj_id) {
		this.pj_id = pj_id;
	}

	@Override
	public String toString() {
		return "Pictures [picture_id=" + picture_id + ", picture_path=" + picture_path + ", description=" + description
				+ ", pj_id=" + pj_id + "]";
	}
	
	
	
	
	
	
	
	
	
}
