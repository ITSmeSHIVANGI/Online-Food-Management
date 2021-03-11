package imageInn;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/ImageInsert")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 *2,
                  maxFileSize = 1024 * 1024 *10,
                  maxRequestSize = 1024 * 1024 *50)
public class ImageInsert extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException {
		res.setContentType("text/html;charset=UTF-8");
		PrintWriter out= res.getWriter();
		int id=Integer.parseInt(req.getParameter("d_id"));
		String d_name=req.getParameter("d_name");
		int d_price=Integer.parseInt(req.getParameter("d_price"));
		String category=req.getParameter("category");
		String ingredients=req.getParameter("ingredients");
		Part part=req.getPart("file");
		String fileName= extractFileName(part);
		String savePath="E:\\Menu\\HUB trial\\WebContent\\images\\" + File.separator + fileName;
		File fileSaveDir = new File(savePath);
		
		part.write(savePath+File.separator);
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_management","root","root");
			PreparedStatement pst =con.prepareStatement("insert into dishes values(?,?,?,?,?,?,?)");
			pst.setInt(1, id);
			pst.setString(2, d_name);
			pst.setInt(3, d_price);
			pst.setString(4, category);
			pst.setString(5, ingredients);
			pst.setString(6, fileName);
			pst.setString(7, savePath);
			pst.executeUpdate();
			out.println("<center><h1>Image Inserted...............</h1></center>");
			out.println("<center><a href='Display.jsp?id="+ id +"'>Display...............</a></center>");
		}catch(Exception e) {
			out.println(e);
		}
	}

	private String extractFileName(Part part) {
		// TODO Auto-generated method stub
		String contentDisp = part.getHeader("content-disposition");
		String[]items= contentDisp.split(";");
		for(String s: items) {
			if(s.trim().startsWith("filename")){
				return s.substring(s.indexOf("=") + 2, s.length()-1);
			}
			
		}
		return "";
	}

}