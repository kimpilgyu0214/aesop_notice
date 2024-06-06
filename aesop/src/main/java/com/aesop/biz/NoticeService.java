package com.aesop.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aesop.domain.Notice;
import com.aesop.per.NoticeMapper;

@Service
public class NoticeService implements NoticeBiz {
	
	@Autowired
	private NoticeMapper noticeDAO;

	@Override
	public int getTotalCount() {
		return noticeDAO.getTotalCount();
	}

	@Override
	public List<Notice> getNoticeList() {
		return noticeDAO.getNoticeList();
	}
	@Transactional
	@Override
	public Notice getNotice(int no) {
		noticeDAO.hitCount(no);
		return noticeDAO.getNotice(no);
	}

	@Override
	public Notice selNotice(int no) {
		return noticeDAO.getNotice(no);
	}

	@Override
	public void insNotice(Notice notice) {
		noticeDAO.insNotice(notice);
	}

	@Override
	public void upNotice(Notice notice) {
		noticeDAO.upNotice(notice);
	}

	@Override
	public void countUpCnt(int no) {
		noticeDAO.hitCount(no);
	}

	@Override
	public void delNotice(int no) {
		noticeDAO.delNotice(no);
	}
	
}