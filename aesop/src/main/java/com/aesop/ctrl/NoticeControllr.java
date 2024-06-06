package com.aesop.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aesop.biz.NoticeBiz;
import com.aesop.domain.Notice;

@Controller
@RequestMapping("/notice/")
public class NoticeControllr {
	
	@Autowired
	public NoticeBiz noticeService;
	
	@RequestMapping("list.do")
	public String getNoticeList(Model model) {
		model.addAttribute("list", noticeService.getNoticeList());
		return "notice/list";
	}
	
	@RequestMapping("detail.do")
	public String getNotice(@RequestParam("no") int no, Model model) {
		model.addAttribute("notice", noticeService.getNotice(no));
		return "notice/get";
	}
	@GetMapping("insert.do")
	public String insNotice(Notice notice, Model model) {
		return "notice/insert";
	}
	@PostMapping("insertPro.do")
	public String insNoticePro(Notice notice, Model model) {
		noticeService.insNotice(notice);
		return "redirect:list.do";
	}
	@GetMapping("update.do")
	public String upNotice(@RequestParam("no") int no, Model model) {
		model.addAttribute("notice", noticeService.getNotice(no));
		return "notice/edit";
	}
	@PostMapping("updatePro.do")
	public String upNoticePro(Notice notice, Model model) {
		noticeService.upNotice(notice);
		return "redirect:list.do";
	}
	@RequestMapping("delNotice.do")
	public String delNotice(@RequestParam("no") int no, Model model) {
		noticeService.delNotice(no);
		return "redirect:list.do";
	}
}