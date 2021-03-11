package dao;
import java.io.IOException;
import java.sql.*;
import java.util.*;
import model.ContactUs;
public class ContactUsDao {
   private Connection conn;
   private PreparedStatement pst;
   private ResultSet rs;
   private String sql;
   
   public ContactUsDao() throws ClassNotFoundException,SQLException, IOException
   {
	   conn = MyConnection.getConnection();
   }
   public Integer addRecord(ContactUs contact) throws SQLException
   {
	   sql="insert into ContactUs values(?,?,?)";
	   pst=conn.prepareStatement(sql);
	   pst.setString(1,contact.getFullName());
	   pst.setString(2,contact.getEmail());
	   pst.setString(3,contact.getMessage());
	   return pst.executeUpdate();
   }
	  public Integer updateRecord(ContactUs contactUs) throws SQLException
      {
    	  sql ="update contactus  set FullName=?,Message=? where Email=?";
    	  pst = conn.prepareStatement(sql);
    	 
    	  pst.setString(1, contactUs.getFullName());
    	  pst.setString(3, contactUs.getEmail());
    	  pst.setString(2, contactUs.getMessage());
    	 
    	  return pst.executeUpdate();
      }

	  public Integer deleteRecord(String Email) throws SQLException
		{
    	  sql ="delete from contactus where Email=?";
    	  pst = conn.prepareStatement(sql);
    	 
    	  pst.setString(1,Email);
    	  return pst.executeUpdate();
      }
		
	     public List<ContactUs> findAllRecord() throws SQLException
	      {
	    	  sql ="select * from contactus";
	    	  pst = conn.prepareStatement(sql);
	          rs =pst.executeQuery();
	          List<ContactUs>store = new ArrayList<ContactUs>();
	          while(rs.next())
	          {
	        	  ContactUs contactUs = new ContactUs();
	        	  contactUs.setFullName(rs.getString(1));
	        	  contactUs.setEmail(rs.getString(2));
	        	  contactUs.setMessage(rs.getString(3));
		 
	     		 store.add(contactUs);
	          }
	    	  return store;
	      }
	  
}
