package com.aesop.per;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.aesop.domain.Notice;

@Repository
public class NoticeDAO implements NoticeMapper {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getTotalCount() {
		return sqlSession.selectOne("notice.getTotalCount");
	}

	@Override
	public List<Notice> getNoticeList() {
		return sqlSession.selectList("notice.getNoticeList");
	}

	@Override
	public Notice getNotice(int no) {
		return sqlSession.selectOne("notice.getNotice",no);
	}

	@Override
	public void insNotice(Notice notice) {
		sqlSession.insert("notice.insNotice",notice);
		
	}

	@Override
	public void upNotice(Notice notice) {
		sqlSession.update("notice.upNotice",notice);
		
	}

	@Override
	public void hitCount(int no) {
		sqlSession.update("notice.hitCount",no);
		
	}

	@Override
	public void delNotice(int no) {
		sqlSession.delete("notice.delNotice",no);
		
	}
	
	
}
