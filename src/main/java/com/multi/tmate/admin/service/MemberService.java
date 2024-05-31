package com.multi.tmate.member.service;

import java.util.ArrayList;

import com.multi.tmate.member.model.dto.MemberDTO;

public interface MemberService {
	int insertMember(MemberDTO memberDTO) throws Exception;
	ArrayList<MemberDTO> selectList() throws Exception;
	MemberDTO login(MemberDTO memberDTO) throws Exception ;
}
