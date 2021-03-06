package com.climinal;

import java.sql.Connection;
import java.util.ArrayList;

import com.frame.Biz;

public class CriminalBiz<T,V> extends Biz<T,V> {
	
	CriminalDao<T,V> dao;
	
	public CriminalBiz() {
		dao = new CriminalDao<>();
	}
	
	@Override
	public void register(T obj) throws Exception {
		
	}

	@Override
	public void remove(V id) throws Exception {
		
	}

	@Override
	public void modify(T obj) throws Exception {
		
	}

	@Override
	public T get(V id) throws Exception {
		return null;
	}

	@Override
	public ArrayList<T> get() throws Exception {
		ArrayList<T> list = null;
		Connection con = getConnection();
		try {
			list = dao.select(con);
		}catch(Exception e) {
			throw e;
		}finally {
			close(con);
		}
		return list;
	}
	
}
