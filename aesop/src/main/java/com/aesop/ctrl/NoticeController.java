package com.aesop.ctrl;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.aesop.biz.NoticeBiz;
import com.aesop.domain.Notice;

@Controller
@RequestMapping("/notice/")
public class NoticeController {
	
	private static final Logger log = LoggerFactory.getLogger(NoticeController.class);
	
	@Autowired
	public NoticeBiz noticeService;
	
	@Autowired
	private static final String uploadLoc = "/resources/upload/";
	
	@RequestMapping("listAll.do")
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
	    public String insNoticePro(@RequestParam("title") String title, @RequestParam("content") String content,
	                               @RequestParam("img1") MultipartFile img1, @RequestParam("img2") MultipartFile img2,
	                               @RequestParam("img3") MultipartFile img3, @RequestParam("img4") MultipartFile img4,
	                               @RequestParam("img5") MultipartFile img5, HttpServletRequest request, Model model) {

	        String uploadDir = request.getServletContext().getRealPath(uploadLoc);
	        File dir = new File(uploadDir);

	        String img1Name = "", img2Name = "", img3Name = "", img4Name = "", img5Name = "";

	        if (!dir.exists()) {
	            dir.mkdirs();
	        }

	        try {
	            if (!img1.isEmpty()) {
	                img1Name = saveFile(img1, uploadDir);
	                log.info("Uploaded file 1 name: {}", img1Name);
	            }
	            if (!img2.isEmpty()) {
	                img2Name = saveFile(img2, uploadDir);
	                log.info("Uploaded file 2 name: {}", img2Name);
	            }
	            if (!img3.isEmpty()) {
	                img3Name = saveFile(img3, uploadDir);
	                log.info("Uploaded file 3 name: {}", img3Name);
	            }
	            if (!img4.isEmpty()) {
	                img4Name = saveFile(img4, uploadDir);
	                log.info("Uploaded file 4 name: {}", img4Name);
	            }
	            if (!img5.isEmpty()) {
	                img5Name = saveFile(img5, uploadDir);
	                log.info("Uploaded file 5 name: {}", img5Name);
	            }
	        } catch (IOException e) {
	            log.error("Exception: {}", e);
	        }

	        Notice notice = new Notice();
	        notice.setTitle(title);
	        notice.setContent(content);
	        notice.setImg1(img1Name);
	        notice.setImg2(img2Name);
	        notice.setImg3(img3Name);
	        notice.setImg4(img4Name);
	        notice.setImg5(img5Name);

	        noticeService.insNotice(notice);
	        return "redirect:listAll.do";
	    }

	    public String saveFile(MultipartFile file, String uploadDir) throws IOException {
	        String originalFilename = file.getOriginalFilename();
	        String newFilename = UUID.randomUUID().toString() + "_" + originalFilename;
	        File serverFile = new File(uploadDir + newFilename);
	        file.transferTo(serverFile);
	        return newFilename;
	    }
	    @GetMapping("update.do")
	    public String upNotice(@RequestParam("no") int no, Model model) {
	        model.addAttribute("notice", noticeService.getNotice(no));
	        return "notice/edit";
	    }
	    
	    @PostMapping("updatePro.do")
	    public String upNoticePro(@RequestParam("no") int no, @RequestParam("title") String title, @RequestParam("content") String content,
	                              @RequestParam("img1") MultipartFile img1, @RequestParam("img2") MultipartFile img2,
	                              @RequestParam("img3") MultipartFile img3, @RequestParam("img4") MultipartFile img4,
	                              @RequestParam("img5") MultipartFile img5, HttpServletRequest request, Model model) {

	        Notice before = noticeService.getNotice(no);

	        String uploadDir = request.getServletContext().getRealPath(uploadLoc);
	        File dir = new File(uploadDir);

	        String img1Name = "", img2Name = "", img3Name = "", img4Name = "", img5Name = "";

	        if (!dir.exists()) {
	            dir.mkdirs();
	        }

	        try {
	            if (!img1.isEmpty()) {
	                img1Name = saveFile(img1, uploadDir);
	                log.info("Updated file 1 name: {}", img1Name);
	            } else {
	                img1Name = before.getImg1();
	            }
	            if (!img2.isEmpty()) {
	                img2Name = saveFile(img2, uploadDir);
	                log.info("Updated file 2 name: {}", img2Name);
	            } else {
	                img2Name = before.getImg2();
	            }
	            if (!img3.isEmpty()) {
	                img3Name = saveFile(img3, uploadDir);
	                log.info("Updated file 3 name: {}", img3Name);
	            } else {
	                img3Name = before.getImg3();
	            }
	            if (!img4.isEmpty()) {
	                img4Name = saveFile(img4, uploadDir);
	                log.info("Updated file 4 name: {}", img4Name);
	            } else {
	                img4Name = before.getImg4();
	            }
	            if (!img5.isEmpty()) {
	                img5Name = saveFile(img5, uploadDir);
	                log.info("Updated file 5 name: {}", img5Name);
	            } else {
	                img5Name = before.getImg5();
	            }
	        } catch (IOException e) {
	            log.error("Exception: {}", e);
	        }

	        Notice notice = new Notice();
	        notice.setNo(no);
	        notice.setTitle(title);
	        notice.setContent(content);
	        notice.setImg1(img1Name);
	        notice.setImg2(img2Name);
	        notice.setImg3(img3Name);
	        notice.setImg4(img4Name);
	        notice.setImg5(img5Name);

	        noticeService.upNotice(notice);
	        return "redirect:listAll.do";
	    }
	
	@RequestMapping("delNotice.do")
	public String delNotice(@RequestParam("no") int no, Model model) {
		noticeService.delNotice(no);
		return "redirect:listAll.do";
	}
}