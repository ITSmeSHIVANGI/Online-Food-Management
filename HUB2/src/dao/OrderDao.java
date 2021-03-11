package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.Order;

public class OrderDao {
	private Connection conn;
	private PreparedStatement pst;
	private String Sql;
	private ResultSet rs;
	public OrderDao()throws ClassNotFoundException,SQLException{
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

	public Integer add(Order user)throws SQLException 
	{
		Sql="insert into orders values (?,?,?)";
		pst=conn.prepareStatement(Sql);
		pst.setInt(1,user.getDishId());
		pst.setString(2,user.getEmail());
		pst.setInt(3,user.getPrice());
		return pst.executeUpdate();
		}
	public Integer updateOrders(Order orders) throws SQLException
	{
		Sql="update Orders set OrderId=?,DishId=?, qOrdered=?, Price=? where email=";
		pst=conn.prepareStatement(Sql);
		pst.setInt(2,orders.getDishId());
		pst.setInt(4,orders.getPrice());
		pst.setString(5,orders.getEmail());

		return pst.executeUpdate();
		
	}
	
	
	public Integer deleteOrders(String Email) throws SQLException
	{
		Sql="delete from orders where email=?";
		
		pst=conn.prepareStatement(Sql);
		pst.setString(1,Email);
		
		return pst.executeUpdate();
	}
	
	public List<Order>findAllOrders()throws SQLException
	{
		Sql="select * from Orders";
		pst=conn.prepareStatement(Sql);
		rs=pst.executeQuery();
		List<Order> store= new ArrayList<Order>();
		
		while(rs.next()) 
		{
			Order orders= new Order();
			orders.setDishId(rs.getInt("dishId"));
			orders.setEmail(rs.getString("email"));
			orders.setPrice(rs.getInt("price"));
			store.add(orders);
			
		}
		return store;
	}
	
	public Order findOrders(Order orders)throws SQLException 
	{
		Sql="select * from orders where email=?";
		pst=conn.prepareStatement(Sql);
		pst.setString(1,orders.getEmail());
		ResultSet rs=pst.executeQuery();
		if(rs.next()==true) {
			orders.setDishId(rs.getInt("dishId"));
			orders.setEmail(rs.getString("email"));
			orders.setPrice(rs.getInt("price"));
		}
		return orders;
		}

}
