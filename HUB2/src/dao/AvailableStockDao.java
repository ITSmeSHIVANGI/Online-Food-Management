package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.io.*;
import model.*;

public class AvailableStockDao
{
		
		
		private Connection conn;
		private ResultSet rs;
		private String sql;
		private PreparedStatement pst;
		public AvailableStockDao() throws ClassNotFoundException, SQLException, IOException
			
		{
			conn = MyConnection.getConnection();
		}
		
		public Integer addRecord(AvailableStock availableStock) throws SQLException
		{
		   	  sql ="insert into availablestock values(?,?,?)";
	    	  pst = conn.prepareStatement(sql);
		    	 
		   	  pst.setString(1,  availableStock.getDishName());
		   	  pst.setInt(2,  availableStock.getDishId());
	    	  pst.setInt(3,  availableStock.getQleft());
		    	 
	    	  return pst.executeUpdate();
	    }
			
			  

		public Integer updateRecord(AvailableStock availableStock) throws SQLException
		{
			sql ="update availablestock  set DishName=?,Qleft=? where DishId=?";
			pst = conn.prepareStatement(sql);
		    	 
		    pst.setString(1,  availableStock.getDishName());
		    pst.setInt(3, availableStock.getDishId());
		    pst.setInt(2, availableStock.getQleft());
		    	 
		    return pst.executeUpdate();
		}

		public Integer deleteRecord(Integer DishId) throws SQLException
		{
			sql ="delete from availablestock where DishId=?";
		    pst = conn.prepareStatement(sql);
		    	 
		    pst.setInt(1, DishId);
		    	 
		    return pst.executeUpdate();
		}
			  
		public List<AvailableStock> findAllRecord() throws SQLException
		{
			sql ="select * from availablestock";
			pst = conn.prepareStatement(sql);
			rs =pst.executeQuery();
			List<AvailableStock>store = new ArrayList<AvailableStock>();
			while(rs.next())
			{
				AvailableStock availableStock = new AvailableStock();
			    availableStock.setDishName(rs.getString(1));
			    availableStock.setDishId(rs.getInt(2));
			    availableStock.setQleft(rs.getInt(3));
				 
			    store.add(availableStock);
			  
			
			}
			return store;
		}
			  
}

