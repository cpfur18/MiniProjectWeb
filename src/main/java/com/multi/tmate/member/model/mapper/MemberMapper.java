package com.multi.tmate.member.model.mapper
;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.multi.tmate.member.model.dto.MemberDTO;

@Repository
public interface MemberMapper {
	int insert(MemberDTO memberDTO) throws Exception; // 회원가입
	ArrayList<MemberDTO> selectList() throws Exception; // 전체 아이디 조회
	ArrayList<String> selectId(String id) throws Exception; // 아이디 검색
	MemberDTO selectLoginMember(MemberDTO memberDTO) throws Exception;
}
