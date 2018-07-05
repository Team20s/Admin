package com.climinal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import com.frame.Dao;
import com.frame.Sql;
import com.vo.Criminal;
import com.vo.Product;

public class CriminalDao<K,V> extends Dao{

	@Override
	public void insert(Connection con, Object obj) throws Exception {
		
	}

	@Override
	public void delete(Connection con, Object id) throws Exception {
		
	}

	@Override
	public void update(Connection con, Object obj) throws Exception {
		
	}

	@Override
	public Object select(Connection con, Object id) throws Exception {
		
		return null;
	}

	@Override
	public ArrayList<K> select(Connection con) throws Exception {
		ArrayList<Criminal> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			pstmt = 
			con.prepareStatement(Sql.selectallCriminal);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Criminal c = null;
				String kind = rset.getString("KIND");
				int apart = rset.getInt("APART");
				int pc = rset.getInt("PC");
				int toilet = rset.getInt("TOILET");
				int parking = rset.getInt("PARKING");
				int school = rset.getInt("SCHOOL");
				int subway = rset.getInt("SUBWAY");
				int office = rset .getInt("OFFICE");
				c = new Criminal(kind,apart,pc,toilet,parking,school,subway,office);
				list.add(c);
			}
		}catch(Exception e) {
			throw e;
		}finally {
			close(pstmt);	
			close(rset);
		}					
		return (ArrayList<K>)list;
	}
}
