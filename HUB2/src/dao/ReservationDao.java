package dao;
import java.io.IOException;
import java.sql.*;
import java.util.*;
import model.Reservation;
public class ReservationDao {
   private Connection conn;
   private PreparedStatement pst;
   private ResultSet rs;
   private String sql;
   
   public ReservationDao() throws ClassNotFoundException,SQLException, IOException
   {
	   conn = MyConnection.getConnection();
   }
   public Integer addRecord(Reservation reserve) throws SQLException
   {
	   sql="insert into Reservation values(?,?,?,?,?,?)";
	   pst=conn.prepareStatement(sql);
	   pst.setString(1,reserve.getName());
	   pst.setString(2,reserve.getMobile());
	   pst.setString(3,reserve.getEmail());
	   pst.setString(4,reserve.getDate());
	   pst.setString(5,reserve.getTime());
	   pst.setInt(6,reserve.getNumberOfPeople());
	   return pst.executeUpdate();
   }
   public Integer updateRecord(Reservation reserve) throws SQLException
   {
 	  sql ="update reservation  set Name=?,Mobile=?,Date=?,TIME=?,NumberOfPeople=? where Email=?";
 	  pst = conn.prepareStatement(sql);
 	 
 	  pst.setString(1, reserve.getName());
 	  pst.setString(2, reserve.getMobile());
 	  pst.setString(6, reserve.getEmail());
 	  pst.setString(3, reserve.getDate());
 	  pst.setString(4, reserve.getTime());
 	  pst.setInt(5, reserve.getNumberOfPeople());
 	 
 	  return pst.executeUpdate();
   }

	  public Integer deleteRecord(String Email) throws SQLException
   {
 	  sql ="delete from reservation where Email=?";
 	  pst = conn.prepareStatement(sql);
 	 
		pst.setString(1,Email);
 	 
 	  return pst.executeUpdate();
   }
	  

	     public List<Reservation> findAllRecord() throws SQLException
	      {
	    	  sql ="select * from reservation";
	    	  pst = conn.prepareStatement(sql);
	          rs =pst.executeQuery();
	          List<Reservation>store = new ArrayList<Reservation>();
	          while(rs.next())
	          {
	        	  Reservation reserve= new Reservation();
	        	  reserve.setName(rs.getString(1));
	        	  reserve.setMobile(rs.getString(2));
	        	  reserve.setEmail(rs.getString(3));
	        	  reserve.setDate(rs.getString(4));
	        	  reserve.setTime(rs.getString(5));
	        	  reserve.setNumberOfPeople(rs.getInt(6));
		 
	     		 store.add(reserve);
	          }
	    	  return store;
	      }
	  
}
