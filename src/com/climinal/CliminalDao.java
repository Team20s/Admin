package com.climinal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import com.frame.Dao;
import com.frame.Sql;
import com.vo.Climinal;
import com.vo.Product;

public class CliminalDao<K,V> extends Dao{

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
		ArrayList<Climinal> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			pstmt = 
			con.prepareStatement(Sql.selectallProduct);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Climinal c = null;
				String kind = rset.getString("kind");
				int apart = rset.getInt("apart");
				int pc = rset.getInt("pc");
				int toilet = rset.getInt("toilet");
				int parking = rset.getInt("parking");
				int school = rset.getInt("school");
				int subway = rset.getInt("subway");
				int office = rset .getInt("office");
				c = new Climinal(kind,apart,pc,toilet,parking,school,subway,office);
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
