package com.multi.tmate.member.model.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberDTO {
	private int memberNo;
	private String id;
	private String pw;
	private String userName;
	private String tel;
	private Date createDate;
}
