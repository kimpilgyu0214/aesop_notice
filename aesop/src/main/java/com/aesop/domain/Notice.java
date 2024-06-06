package com.aesop.domain;

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
	private String image_url;
	private String name;
	private int hit;
	private String regdate;
}
