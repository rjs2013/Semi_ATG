package com.atg.Register.biz;

import java.util.List;
import java.util.Map;

import com.atg.Register.dao.RegisterDao;
import com.atg.Register.dao.RegisterDaoImpl;
import com.atg.Register.dto.RegisterDto;

public class RegisterBizImpl implements RegisterBiz {

		RegisterDao dao = new RegisterDaoImpl();
	@Override
	public RegisterDto login(Map<String, String> map) {
		
		return dao.login(map);
	}

	@Override
	public int idCheck(String mb_id) {
		
		
		System.out.println(dao.idCheck(mb_id)+"---------BizImpl--------");
		
		return dao.idCheck(mb_id);
	}

	@Override
	public List<RegisterDto> selectList() {
		// TODO Auto-generated method stub
		return dao.selectList();
	}

	@Override
	public RegisterDto selectOne(int mb_no) {
		// TODO Auto-generated method stub
		return dao.selectOne(mb_no);
	}

	@Override
	public int insert(RegisterDto dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int update(RegisterDto dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(int mb_no) {
		// TODO Auto-generated method stub
		return dao.delete(mb_no);
	}

	@Override
	public RegisterDto userInfo(RegisterDto dto) {
		// TODO Auto-generated method stub
		return  dao.userInfo(dto);
	}
	

}
