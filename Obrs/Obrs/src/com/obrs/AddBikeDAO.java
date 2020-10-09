package com.obrs;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.model.*;

public class AddBikeDAO {
	private static Connection con; 
	private static PreparedStatement stmt;
	public static void getConnection()
	  {
		  try {
		  Class.forName("com.mysql.jdbc.Driver");   // Driver should be abistered
		  con=DriverManager.getConnection( "jdbc:mysql://localhost:3307/bikedatabase","root",""); 
		  }
		  catch(SQLException e)
		  {	  e.printStackTrace();	  }
		  catch(Exception e)
		  {	  e.printStackTrace();	  }  	  
		  
	  
	  }
	  public static void closeConnection()
	  {
		  try{
			  if(con.isClosed()==false)
		          con.close();   // closing the connection
		  }
		  catch(Exception e)
		  { e.printStackTrace();	 }
	  }
	  public static boolean addbike(RegistrationModel ab)
	  {
		  int nor=0;
		  try{
			getConnection();
			stmt=con.prepareStatement("insert into bikes values(?,?,?,?,?,?,?,?)");
			  stmt.setInt(1, ab.getB_id());
			  stmt.setString(2, ab.getModel());
			  stmt.setString(3, ab.getPday_rent());
			  stmt.setString(4, ab.getB_colour());
			  stmt.setString(5, ab.getReg_number() );
			  stmt.setString(6, ab.getCategory());
			  stmt.setString(7, ab.getEngine_cc());
			  stmt.setString(8, ab.getStatus());
			  nor= stmt.executeUpdate();
				 closeConnection();
				   if (nor>0)
				   {
					   return true;
				   }
				   else
					   return false;
		  }
		  catch(SQLException e)
		  {
		  e.printStackTrace();
		  return false;
		  }
		  catch(Exception e)
		  {
		  e.printStackTrace();
		  return false;
		  }  
		  
	  }

}
