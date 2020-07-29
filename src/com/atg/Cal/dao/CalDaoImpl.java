package com.atg.Cal.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.atg.Cal.dto.CalDto;

public class CalDaoImpl extends CalSqlMapConfig implements CalDao{

	private String namespace = "cal.";
	
	public int insertCal(CalDto dto) {
		SqlSession session = null;

		int res = 0;
		
		try {
			session = getSqlSessionFactory().openSession(false);
		
			res = session.insert(namespace+"insertCal", dto);
			if(res > 0) {
				session.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return res;
	}
	public List<CalDto> getCalList(String mb_id, String yyyyMMdd) {
		SqlSession session = null;
		
		List<CalDto> list = new ArrayList<CalDto>();
		Map<String, String> map = new HashMap<>();
		map.put("mb_id", mb_id);
		map.put("yyyyMMdd", yyyyMMdd);
		
		try {
			session = getSqlSessionFactory().openSession(false);
			list = session.selectOne(namespace+"getCalList", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	public CalDto selectOne(int mb_no) {
		SqlSession session = null;
		CalDto dto = null;
		
		try {
			session = getSqlSessionFactory().openSession(false);
			dto = session.selectOne(namespace+"selectOne", mb_no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return dto;
	}
	public int update(CalDto dto) {
		SqlSession session = null;
		
		int res = 0;
		
		try {
			session = getSqlSessionFactory().openSession(false);
			
			res = session.update(namespace+"update", dto);
			if(res > 0) {
				session.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return res;
	}
	public List<CalDto> getViewList(String mb_id, String yyyyMM) {
		SqlSession session = null;
		
		List<CalDto> list = new ArrayList<CalDto>();
		Map<String, String> map = new HashMap<>();
		map.put("mb_id", mb_id);
		map.put("yyyyMM", yyyyMM);
		
		try {
			session = getSqlSessionFactory().openSession(false);
			list = session.selectOne(namespace+"getViewList", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	public int getViewCount(String mb_id, String yyyyMM) {
		SqlSession session = null;
		
		int count = 0;
		Map<String, String> map = new HashMap<>();
		map.put("mb_id", mb_id);
		map.put("yyyyMM", yyyyMM);
		
		try {
			session = getSqlSessionFactory().openSession(false);
			count = session.selectOne(namespace+"getViewCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return count;
	}
	
	public int delete(int ca_no) {
		SqlSession session = null;
		
		int res = 0;
		
		try {
			session = getSqlSessionFactory().openSession(false);
			
			res = session.delete(namespace+"delete", ca_no);
			if(res > 0) {
				session.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return res;
	}
	
}
