package ezen.portfolio.article.dao;

import java.util.List;

import ezen.portfolio.article.dto.Memo;

public interface MemoDao {
	public boolean createMemo(Memo memo);
	public List<Memo> findByAll();
	// 페이징 계산에 필요한 게시글 전체 갯수 반환
	public int getCountAll();
	
	// 요청 페이지, 페이지당 보여지는 목록 갯수에 따른 목록 반환
	public List<Memo> findByAll(int requestPage, int elementSize);
	
}
