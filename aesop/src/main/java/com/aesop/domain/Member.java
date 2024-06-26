package com.aesop.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	private String email;
	private String pw;
	private String name;
	private String tel;
	private String addr1;
	private String addr2;
	private String postcode;
	private String birth;
	private String skintype;
	private int point;
	private String regdate;
}
