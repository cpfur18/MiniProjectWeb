package com.multi.tmate.member.controller;

import java.nio.file.Path;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.tmate.member.dto.MemberDTO;

@RequestMapping("/member")
@Controller
public class MemberController {
	
	// 로그인
	@GetMapping("/login")
	public String login () {
		return "/member/login";
	}
	
	// 회원가입
	@GetMapping("/insert")
	public String memberInsert() {
		return "/member/insert";
	}
	
	@PostMapping("/inset")
	public void memberInsert(Model model) {
		String path = "";
		MemberDTO memberDTO = new MemberDTO();
		try {
			
		} catch (Exception e) {
			
		}
	}
}
