package imageInn;
import java.sql.*;
import java.io.*;
import java.util.*;
public class Dao {
		private Connection conn;
		private PreparedStatement pst;
		private String Sql;
		private ResultSet rs;
		public Dao()throws ClassNotFoundException,SQLException{
			String driverName="com.mysql.jdbc.Driver";
			String url="jdbc:mysql://localhost:3306/online_food_management";
			String uname="root";
			String upass="root";
			Class.forName(driverName);
			System.out.println("load driver");
			conn=DriverManager.getConnection(url, uname, upass);
			System.out.println("connected");
			System.out.println("==============");
		}
		public Integer update(User user)throws SQLException 
		{
			Sql="update dishes set d_name=? where d_id=?";
			pst=conn.prepareStatement(Sql);
			pst.setInt(2,user.getD_id());
			pst.setString(1,user.getD_name());
			return pst.executeUpdate();
			}
		public Integer delete(User user)throws SQLException 
		{
			Sql="delete from dishes where d_id=?";
			pst=conn.prepareStatement(Sql);
			pst.setInt(1,user.getD_id());
			return pst.executeUpdate();
			}

	}
