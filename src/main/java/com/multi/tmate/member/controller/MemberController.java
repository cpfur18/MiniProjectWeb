package com.multi.tmate.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.tmate.member.model.dto.MemberDTO;
import com.multi.tmate.member.service.MemberService;

import lombok.AllArgsConstructor;

@RequestMapping("/member")
@AllArgsConstructor
@Controller
public class MemberController {
	private final MemberService memberService;
	
	// 로그인
	@GetMapping("/login")
	public String login () {
		
		try {
			System.out.println("확인");
			ArrayList<MemberDTO> list = memberService.selectList(); 
			System.out.println(list);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "/member/login";
	}
	
	@PostMapping("/login")
	public String login (MemberDTO memberDTO, Model model, HttpSession session) {
		
		String path = "";
		String Message = "로그인 실패!";
		
		try {
			MemberDTO loginMember = memberService.login(memberDTO);

			if (loginMember != null) {
				session.setAttribute("loginMember", loginMember);
				
				return "redirect:/";
				
			} else {
				path = "common/failed";
				model.addAttribute("message", Message);
			}
		} catch (Exception e) {
			path = "common/failed";
			model.addAttribute("message", Message);
		}
		
		return path;
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		try {
			System.out.println("확인");
			ArrayList<MemberDTO> list = memberService.selectList(); 
			System.out.println(list);
		} catch (Exception e) {
			// TODO: handle exception
		}
		session.invalidate();
		
	    return "redirect:/";
	}
	
	
	// 회원가입
	@GetMapping("/insert")
	public String memberInsert() {		
		return "/member/insert";
	}
	
	@PostMapping("/insert")
	public String memberInsert(MemberDTO memberDTO, Model model) {
		String path = "";
		String Message = "회원 가입 실패!";
		
		try {
			int result = memberService.insertMember(memberDTO);
			
			if (result > 0) {
				path = "common/success";
				Message = "insertMember";
				
				model.addAttribute("successCode", Message);
				
			} else {
				path = "common/failed";
				model.addAttribute("message", Message);
			}
		} catch (Exception e) {
			path = "common/failed";
			model.addAttribute("message", Message);
		}
		return path;
	}
}
