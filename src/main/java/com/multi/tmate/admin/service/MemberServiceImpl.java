package com.multi.tmate.member.service;

import java.util.ArrayList;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import com.multi.tmate.member.model.dto.MemberDTO;
import com.multi.tmate.member.model.mapper.MemberMapper;

import lombok.AllArgsConstructor;

@Service("memberService")
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	private static final Log log = LogFactory.getLog(MemberServiceImpl.class);

	private final MemberMapper memberMapper;
	
//	@Override
//	public int insertMember(MemberDTO memberDTO) throws Exception { // 회원가입
//		int result = 0;
//		System.out.println(memberDTO);
//		result = memberMapper.insert(memberDTO);
//		
//		return result;
//	}
//
//	@Override
//	public ArrayList<MemberDTO> selectList() throws Exception { // 회원조회
//		ArrayList<MemberDTO> list = memberMapper.selectList();
//		
//		return list;
//	}
	
	@Override
    public int insertMember(MemberDTO memberDTO) throws Exception { // 회원가입
        int result = 0;
        // 디버깅용 메시지
        log.debug("회원가입 시도: " + memberDTO.toString());
        try {
            result = memberMapper.insert(memberDTO);
            // 성공 로그 출력
            log.info("회원가입 성공: " + memberDTO.toString());
        } catch (Exception e) {
        	// 실패 메시지와 함께 에러 메시지 출력
        	log.error("회원가입 실패: " + memberDTO.toString(), e);
            throw e;
        }
        return result;
    }

    @Override
    public ArrayList<MemberDTO> selectList() throws Exception { // 회원조회
        ArrayList<MemberDTO> list = null;
        try {
            list = memberMapper.selectList();
            // 성공 로그 출력
            log.info("회원조회 성공: 총 " + list.size() + "명의 회원이 조회되었습니다.");
        } catch (Exception e) {
            // 실패 메시지와 함께 에러 메시지 출력
        	log.error("회원조회 실패", e);
            throw e;
        }
        return list;
    }

	@Override
	public MemberDTO login(MemberDTO memberDTO) throws Exception {
		MemberDTO loginMember = memberMapper.selectLoginMember(memberDTO);
		
		return loginMember;
	}
	
	

}
