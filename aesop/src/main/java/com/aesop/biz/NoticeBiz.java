package com.aesop.biz;

import java.util.List;

import com.aesop.domain.Notice;

public interface NoticeBiz {
	public int getTotalCount();
	public List<Notice> getNoticeList();
	public Notice getNotice(int no);
	public Notice selNotice(int no);
	public void insNotice(Notice notice);
	public void upNotice(Notice notice);
	public void countUpCnt(int no);
	public void delNotice(int no);
}