package dao;

import model.*;
import java.io.*;
import java.sql.*;
import java.util.*;



public class CustomerDetailsDao 
{
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	private String sql;
	 
	public CustomerDetailsDao() throws ClassNotFoundException,SQLException,IOException
	{
		conn=MyConnection.getConnection();
	}
	public Integer registerRecord(CustomerDetails customerDetails) throws SQLException
	{
		sql="insert into CustomerDetails values(?,?,?,?,?,?,?,?,?)";
		pst=conn.prepareStatement(sql);
		pst.setString(1,customerDetails.getFirstName());
		pst.setString(2,customerDetails.getLastName());
		pst.setString(3,customerDetails.getEmail());
		pst.setString(4,customerDetails.getMobile());
		pst.setString(5,customerDetails.getAddress());
		pst.setString(6,customerDetails.getCity());
		pst.setString(7,customerDetails.getState());
		pst.setInt(8,customerDetails.getPincode());
		pst.setString(9,customerDetails.getPassword());
		
		return pst.executeUpdate();
		
	}
	
	  public Integer updateRecord(CustomerDetails cust) throws SQLException 
	   {
	      sql="update CustomerDetails set firstName=?,lastName=?,mobile=?,address=?,city=?,state=?,pincode=? where email=?";
	      pst=conn.prepareStatement(sql);
	      pst.setString(8,cust.getEmail());
	      pst.setString(1,cust.getFirstName());
	      pst.setString(2,cust.getLastName());
	      pst.setString(3,cust.getMobile());
	      pst.setString(4,cust.getAddress());
          pst.setString(5,cust.getCity());
	      pst.setString(6,cust.getState());
	      pst.setInt(7,cust.getPincode());
	      
	      
		  return pst.executeUpdate();
	   }
	
	  public Integer updatePassword(CustomerDetails cust) throws SQLException 
	   {
	      sql="update CustomerDetails set password=? where email=?";
	      pst=conn.prepareStatement(sql);
	      pst.setString(2,cust.getEmail());
	      pst.setString(1,cust.getPassword());
	      return pst.executeUpdate();
	   }
	  public Integer deleteRecord(String Email) throws SQLException
		{
			sql="delete from customerdetails where email=?";
			pst=conn.prepareStatement(sql);
			
			pst.setString(1,Email);
			
			
			return pst.executeUpdate();
		}
	  public List<CustomerDetails> findAllRecord()throws SQLException
		{
			sql="select Firstname,lastname,email,mobile,address,city,pincode,state from CustomerDetails";
			pst=conn.prepareStatement(sql);
			rs=pst.executeQuery();
			List<CustomerDetails> store= new ArrayList<CustomerDetails>();
			
			while(rs.next()) 
			{
				CustomerDetails customerDetails = new CustomerDetails();
				customerDetails.setFirstName(rs.getString("FirstName"));
				customerDetails.setLastName(rs.getString("LastName"));
				customerDetails.setEmail(rs.getString("Email"));
				customerDetails.setMobile(rs.getString("Mobile"));
				customerDetails.setAddress(rs.getString("Address"));
				customerDetails.setCity(rs.getString("City"));
				customerDetails.setState(rs.getString("State"));
				customerDetails.setPincode(rs.getInt("Pincode"));
				
				store.add(customerDetails);
				
			}
			return store;
		}
	public Boolean Validate(CustomerDetails customerDetails)
	{
		try
		{
		String dbPassword;
		sql="select * from CustomerDetails where email=? and password=?";
		pst=conn.prepareStatement(sql);
		pst.setString(1,customerDetails.getEmail());
		pst.setString(2,customerDetails.getPassword());
		rs=pst.executeQuery();
		
		if(rs.next())
		{
			dbPassword=rs.getString("Password");
		    if(dbPassword.equals(customerDetails.getPassword()))
		    {
		    	customerDetails.setFirstName(rs.getString("firstName"));
		    	customerDetails.setLastName(rs.getString("lastName"));
		    	customerDetails.setEmail(rs.getString("email"));
		    	customerDetails.setMobile(rs.getString("mobile"));
		    	customerDetails.setAddress(rs.getString("address"));
		    	customerDetails.setCity(rs.getString("city"));
		    	customerDetails.setState(rs.getString("state"));
		    	customerDetails.setPincode(rs.getInt("pincode"));
		    	customerDetails.setPassword(rs.getString("password"));
		    	return true;
		    }
		}
		else 
			return false;
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
		return false;
	}
	
	/*public List<CustomerDetails> SessionTrack() throws SQLException
	{
		
		sql="select * from CustomerDetails";
		pst=conn.prepareStatement(sql);
		rs=pst.executeQuery();
		List<CustomerDetails> store=new ArrayList<CustomerDetails>();
		CustomerDetails customerDetails=new CustomerDetails();
		pst.setString(1,customerDetails.getFirstName());
		pst.setString(2,customerDetails.getLastName());
		pst.setString(3,customerDetails.getEmail());
		pst.setString(4,customerDetails.getMobile());
		pst.setString(5,customerDetails.getAddress());
		pst.setString(6,customerDetails.getCity());
		pst.setString(7,customerDetails.getState());
		pst.setInt(8,customerDetails.getPincode());
		pst.setString(9,customerDetails.getPassword());
		
		customerDetails.setFirstName(rs.getString("firstName"));
		customerDetails.setLastName(rs.getString("lastName"));
		customerDetails.setEmail(rs.getString("email"));
		customerDetails.setMobile(rs.getString("Mobile"));
		customerDetails.setAddress(rs.getString("address"));
		customerDetails.setCity(rs.getString("city"));
		customerDetails.setState(rs.getString("state"));
		customerDetails.setPincode(rs.getInt("pincode"));
		customerDetails.setPassword(rs.getString("password"));
		
		
		return
	}*/
}
