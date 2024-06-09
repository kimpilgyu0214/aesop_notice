package com.aesop.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Notice {

	private int no;
	private String title;
	private String content;
	private String name;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	private int hit;
	private String regdate;
}
