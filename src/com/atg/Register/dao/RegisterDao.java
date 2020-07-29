package com.atg.Register.dao;

import java.util.List;
import java.util.Map;

import com.atg.Register.dto.RegisterDto;

public interface RegisterDao {
	//로그인 기능 
	public RegisterDto login(Map<String, String> map);
	
	//아이디 체크 
	public int idCheck(String mb_id);
			
	//전체출력 
	public List<RegisterDto> selectList();
	
	//부분출력 
	public RegisterDto selectOne(int mb_no);
	
	
	//회원가입 
	public int insert(RegisterDto dto);
	
	
	
	//업데이트 
	public int update (RegisterDto dto);
	//삭제 
	public int delete(int mb_no);
	
	//유저조회
	public RegisterDto userInfo(RegisterDto dto);

}
