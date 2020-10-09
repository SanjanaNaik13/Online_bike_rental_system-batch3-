package com.obrs;




import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.*;


public class AvailableBikesDAO
{
  private static Connection con; 
  private static PreparedStatement stmt;
  
public static void getConnection()
  {	 	
	  String JdbcURL = "jdbc:mysql://localhost:3307/bikedatabase?" + "autoReconnect=true&useSSL=false";
      String Username = "root";
      String password = "";
       con = null;      
      try 
      {
    	 Class.forName("com.mysql.jdbc.Driver");   // Driver should be registered
    	 // con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/test1","root","");  
         con = DriverManager.getConnection(JdbcURL, Username, password);
         
      } 
      catch (Exception e) 
      {
         e.printStackTrace();
      }
	   
	 
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
  
  
  //fetch the details
  public static ArrayList<RegistrationModel> allbikes(String rent_type)
  {
	  ArrayList <RegistrationModel> arr=new ArrayList<RegistrationModel>();
	  RegistrationModel reg;
	  try
	  {
	  getConnection();
      stmt=con.prepareStatement("select model,pday_rent,b_colour,b_id from bikes where rent_type=? "); 
      stmt.setString(1, rent_type);
	  ResultSet rs=stmt.executeQuery();
	  while(rs.next())
	  {
		  reg=new RegistrationModel(rs.getString(1), rs.getString(2),rs.getString(3),rs.getInt(4));
		  arr.add(reg);
		  System.out.println(reg);
	  }
	  closeConnection();	 
	     return arr;
		 
	  }
	  catch(SQLException e)
	  {	  e.printStackTrace();	
	  return null;
	  }
	  catch(Exception e)
	  {	  e.printStackTrace();	 
	  return null;
	  }  	  
  }
  public static ArrayList<RegistrationModel> booking(int b_id)
  {
	  ArrayList <RegistrationModel> ab=new ArrayList<RegistrationModel>();
	  RegistrationModel regi;
	  try
	  {
	  getConnection();
      stmt=con.prepareStatement("select model,pday_rent,b_colour,b_id from bikes where b_id=? "); 
      stmt.setInt(1, b_id);
	  ResultSet rs=stmt.executeQuery();
	  while(rs.next())
	  {
		  regi=new RegistrationModel(rs.getString(1), rs.getString(2),rs.getString(3),rs.getInt(4));
		  ab.add(regi);
		  System.out.println(regi);
	  }
	  closeConnection();	 
	     return ab;
		 
	  }
	  catch(SQLException e)
	  {	  e.printStackTrace();	
	  return null;
	  }
	  catch(Exception e)
	  {	  e.printStackTrace();	 
	  return null;
	  }  	  
  }
  public static Boolean updatebooking(RegistrationModel r1)
  {
	  int n=0;
	 try
	 {
	  getConnection();
      stmt=con.prepareStatement("insert into booking values"); 
	  ResultSet rs=stmt.executeQuery();
	   n= stmt.executeUpdate();
		 closeConnection();
		   if (n>0)
		   {
			   return true;
		   }
		   else
			   return false;
		 
	  }
	  catch(SQLException e)
	  {	  e.printStackTrace();	
	  return null;
	  }
	  catch(Exception e)
	  {	  e.printStackTrace();	 
	  return null;
	  }  	  
  }
  public static int maxb_id()
  {
	  int bid=0;
		 try
		 {
		  getConnection();
	      stmt=con.prepareStatement("select max(book_id) from booking"); 
		  ResultSet rs=stmt.executeQuery();
		
			 closeConnection();
			   while(rs.next())
			   {
				  bid=rs.getInt(1) ;
			   }
			 return bid;
			 
		  }
		  catch(SQLException e)
		  {	  e.printStackTrace();	
		  return 0;
		  }
		  catch(Exception e)
		  {	  e.printStackTrace();	 
		  return 0;
		  } 
	  
  }
}
 
  

  
  
