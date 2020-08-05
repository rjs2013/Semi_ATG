package com.atg.Register.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.atg.Register.dto.RegisterDto;

public class RegisterDaoImpl extends RegisterSqlMapConfig implements RegisterDao {
	
	
	private final String namespace="mapper.";
	
	@Override
	public List<RegisterDto> selectList() {
		SqlSession session = null;
		List<RegisterDto> list = null;
		try {
			session = getSqlSessionFactory().openSession(false);
			// autocommit 할거냐 말거냐 기본값이 true
			list = session.selectList(namespace+"selectList");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			session.close();
			
		}
		
		return list;
	}
	@Override
	public RegisterDto login(Map<String, String> map) {
		SqlSession session = null;
		RegisterDto dto = null;
		
		try {
			session = getSqlSessionFactory().openSession(false);
			dto = session.selectOne(namespace+"login",map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		
		return dto;
	}

	@Override
	public int idCheck(String mb_id) {
		SqlSession session = null;
		//RegisterDto dto =null;
		int idCount = 0;
		session = getSqlSessionFactory().openSession(true);
		//dto = session.selectOne(namespace+"idCheck",mb_id);
		//System.out.println(dto+"----------Daoimpl부분-----------------");
		idCount = session.selectOne(namespace+"idCheck",mb_id);
		return idCount;
	}


	@Override
	public RegisterDto selectOne(int mb_no) {
		SqlSession session = null;
		RegisterDto dto = null;
		try {
			session =getSqlSessionFactory().openSession(false);
			dto = session.selectOne(namespace+"selectOne",mb_no);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return dto;
	}
	//회원가입
	@Override
	public int insert(RegisterDto dto) {
		SqlSession session = null;
		int res = 0;
		
		try {
			session=getSqlSessionFactory().openSession(true);
			res=session.insert(namespace+"insert", dto);
			System.out.println(res+"res-----------daoimpl부분");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return res;
	}

	@Override
	public int update(RegisterDto dto) {
		return 0;
	}

	@Override
	public int delete(int mb_no) {
		return 0;
	}

	@Override
	public RegisterDto userInfo(RegisterDto dto) {
		return null;
	}

}
