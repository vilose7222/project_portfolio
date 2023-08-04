package ezen.portfolio.project.dto;

/**
 * 프로젝트 관리 클래스
 * @author 윤동진
 *
 */
public class Project {
	private int p_id;			//프로젝트 번호 (pk, 시퀀스 1부터 시작)
	private String name;		//프로젝트 명
	private String description;	//프로젝트 설명
	private int participation;	//참여 인원
	private String start_date;	//시작 일자
	private String end_date;	//종료 일자
	private String skills;		//사용 기술
	private String picture;     //삽입할 이미지의 경로
	//default constructor
	public Project() {}

	

	public Project(int p_id, String name, String description, int participation, String start_date, String end_date,
			String skills, String picture) {
		super();
		this.p_id = p_id;
		this.name = name;
		this.description = description;
		this.participation = participation;
		this.start_date = start_date;
		this.end_date = end_date;
		this.skills = skills;
		this.picture = picture;
	}

	

	public int getP_id() {
		return p_id;
	}



	public void setP_id(int p_id) {
		this.p_id = p_id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public int getParticipation() {
		return participation;
	}



	public void setParticipation(int participation) {
		this.participation = participation;
	}



	public String getStart_date() {
		return start_date;
	}



	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}



	public String getEnd_date() {
		return end_date;
	}



	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}



	public String getSkills() {
		return skills;
	}



	public void setSkills(String skills) {
		this.skills = skills;
	}



	public String getPicture() {
		return picture;
	}



	public void setPicture(String picture) {
		this.picture = picture;
	}





	@Override
	public String toString() {
		return "Project [p_id=" + p_id + ", name=" + name + ", description=" + description + ", participation="
				+ participation + ", start_date=" + start_date + ", end_date=" + end_date + ", skills=" + skills + "]";
	}


	

	
}
