package com.aesop.per;

import java.util.List;

import com.aesop.domain.Notice;

public interface NoticeMapper {
	
	public int getTotalCount();
	public List<Notice> getNoticeList();
	public Notice getNotice(int no);
	public void insNotice(Notice notice);
	public void upNotice(Notice notice);
	public void hitCount(int no);
	public void delNotice(int no);

}
