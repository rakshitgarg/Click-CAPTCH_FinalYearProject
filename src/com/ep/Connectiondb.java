package com.ep;

import java.security.*;
import java.security.spec.InvalidKeySpecException;
import  javax.crypto.spec.SecretKeySpec;
import  javax.crypto.*;
import sun.misc.*;

import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets; 


import java.sql.*;
import java.util.StringTokenizer;

public class Connectiondb {

public static Connection getCon(){	
	Connection con=null;
	try{
	Class.forName("com.mysql.jdbc.Driver");
	 con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sgpa", "root", "pass");
	}catch(Exception e){
		e.printStackTrace();
	}
   return con;
}

public String fetchSeq(String uname){
	
	String sequence = null;
	 PreparedStatement ps= null;
	    ResultSet rs= null;
	    Connection con = getCon();
	    try{
	    String sql = "select AES_DECRYPT(seq,'pass') from userregistration where user='" + uname + "'";
		ps= con.prepareStatement(sql);
		rs= ps.executeQuery();
		while(rs.next()){
	//		System.out.println(rs.getString(1));
		sequence = rs.getString(1);
	//	System.out.println("sequence :"+ sequence);
							
		}}	catch(SQLException e){
			e.printStackTrace();
		}	
	
	return sequence;
}

public ResultSet getProfile(String uname){
	
	ResultSet rs=null;
	String sql=null;
	PreparedStatement ps= null;
	Connection con = getCon();
	
	try{
		sql= "select * from userregistration where user=" + uname;
		ps = con.prepareStatement(sql);
		rs= ps.executeQuery();
		
		while(rs.next()){
			   System.out.println("now here");
			  System.out.println(rs.getString(1));
			  //System.out.println(rs.getInt());
			/*  out.println(rs.getString(4));
			  out.println(rs.getInt(5));
			  out.println(rs.getString(6));
			  out.println(rs.getInt(7));
			  out.println(rs.getString(8));*/
		   }
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
	/*try{
//	rs.close();
//	ps.close();
//s	con.close();
	}catch(SQLException e){
		e.printStackTrace();
	}*/
	}
	
return rs;	
}

public boolean confirmfGPwd(String uname){
	Connection con = getCon();
	PreparedStatement ps=null;
	PreparedStatement ps1=null;
	PreparedStatement ps2=null;
	PreparedStatement ps3=null;
	ResultSet rs=null;
	int count=0;
	boolean flag=false;
	
	String str="";
	try{
		
		String sql= "select * from sTselect where uname='"+ uname + "'";
		ps= con.prepareStatement(sql);
		rs = ps.executeQuery();
	    while(rs.next()){
	    count++;
	    str += rs.getString(2).replaceFirst("GImage","");
	    str = str.replace(".png",",");	    	
	    }  
	  
		//str = str.subSequence(0,);
		str= str.substring(0,str.length()-1);
		String sql1 = "select * from ur where user='" + uname + "'";
		ps1= con.prepareStatement(sql1);
		rs= ps1.executeQuery();
		while(rs.next()){
			System.out.println(rs.getString(8));
			System.out.println("str"+ str);
			if(rs.getString(8).equals(str))
			{	 flag = true;
			  String s ="insert into userregistration (user,email,contact,loc,ptype,cpwd,noofimageclicked,seq) values('"+ rs.getString(1) +"','" + rs.getString(2) + "'," + rs.getInt(3) + ",'" + rs.getString(4) + "'," + rs.getInt(5) + "," +  null   +","   + rs.getInt(7) + ",AES_Encrypt(?,'pass'))";
			   PreparedStatement st=con.prepareStatement(s);  
			   st.setString(1,rs.getString(8));
			   int x= st.executeUpdate(); 
			   st.close();	
			}
		}	
		
		String sql2 = "delete from sTselect where uname='" + uname + "'"; 
	    ps2= con.prepareStatement(sql2);
	    int z= ps2.executeUpdate();
	    if(z != 0)
	      System.out.println("deleted");
		
	    
	    	String sql3= "delete from ur where user='" + uname + "'";
	    	ps3= con.prepareStatement(sql3);
		    int s= ps3.executeUpdate();
		    if(z != 0)
		      System.out.println("deleted from user");
	
		
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		try{
		rs.close();
		ps.close();
		ps1.close();
		ps2.close();
		con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
return flag;	
}




public boolean verifyPwd(String uname){

	boolean flag=false;
	Connection con = getCon();
	PreparedStatement ps1=null;
	PreparedStatement ps2=null;
	PreparedStatement ps3=null;
	ResultSet rs1=null;
	ResultSet rs2=null;
	String str="";
    int[][] temp= {{0,1,2},
			 {10,11,12},
			 {20,21,22},
			 {30,31,32},
			 {40,41,42},
			 {50,51,52},				 
			 {60,61,62},
			 {70,71,72},
			 {80,81,82},
			 {90,91,92},
			 {100,101,102},
			 {110,111,112},				 
			 {120,121,122},
			 {130,131,132},
			 {140,141,142},
			 {150,151,152},
			 {160,161,162},				 
			 {170,171,172},
			 {180,181,182},
			 {190,191,192},
			 {200,201,202},
			 {210,211,212},
			 {220,221,222},
			 {230,231,232},				 
			 {240,241,242},
			 {250,251,252},
			 {260,261,262},
			 {270,271,272},
			 {280,281,282},				 
			 {290,291,292},
			 {300,301,302},				 
			 {310,311,312},
			 {320,321,322},
			 {330,331,332},
			 {340,341,342},
			 {350,351,352},
			 {360,361,362},
			 {370,371,372},
			 {380,381,382},				 
			 {390,391,392},				
			 {400,401,402},
			 {410,411,412},				 
			 {420,421,422},
			 {430,431,432}, 
			 {440,441,442},
			 {450,451,452},
			 {460,461,462},
			 {470,471,472},
			 {480,481,482}  };

	
	try{
		String sql= "select * from sTselect where uname='"+ uname + "'";
		ps1 = con.prepareStatement(sql);
		rs1= ps1.executeQuery();
		 while(rs1.next()){
			    str += rs1.getString(2).replaceFirst("Timage","");
			    str = str.replace(".png",",");	    	
			    }  
		 
		 str= str.substring(0,str.length()-1);
		 System.out.println("Tselect :"+ str);
		 
		 StringTokenizer st= new StringTokenizer(str,",");
		
			String sql1 = "select * from userregistration where user='" + uname + "'";
			ps2= con.prepareStatement(sql1);
			rs2= ps2.executeQuery();
			while(rs2.next()){
				System.out.println(rs2.getString(8));
				System.out.println("str"+ str);
				
				StringTokenizer st1= new StringTokenizer(rs2.getString(8),",");
				while(st1.hasMoreElements())
				{
					while(st.hasMoreElements())
					{
						for(int ii=0;ii<3;ii++)
							if(temp[Integer.parseInt(st1.nextToken())][ii] == Integer.parseInt(st.nextToken()))
								flag = true;
					}	
					
				}				
			}	
			
			
				String sql2 = "delete from sTselect where uname='" + uname + "'"; 
			    ps3= con.prepareStatement(sql2);
			    int z= ps3.executeUpdate();
			    if(z != 0)
			      System.out.println("deleted");
					
			
	}catch(SQLException e){
		e.printStackTrace();
	}	
	return flag;
}

public boolean verifyPwd1(String uname){

	boolean flag=false;
	Connection con = getCon();
	PreparedStatement ps1=null;
	PreparedStatement ps2=null;
	PreparedStatement ps3=null;
	ResultSet rs1=null;
	ResultSet rs2=null;
	String str="";
    int[][] temp= {{0,1,2},
			 {10,11,12},
			 {20,21,22},
			 {30,31,32},
			 {40,41,42},
			 {50,51,52},				 
			 {60,61,62},
			 {70,71,72},
			 {80,81,82},
			 {90,91,92},
			 {100,101,102},
			 {110,111,112},				 
			 {120,121,122},
			 {130,131,132},
			 {140,141,142},
			 {150,151,152},
			 {160,161,162},				 
			 {170,171,172},
			 {180,181,182},
			 {190,191,192},
			 {200,201,202},
			 {210,211,212},
			 {220,221,222},
			 {230,231,232},				 
			 {240,241,242},
			 {250,251,252},
			 {260,261,262},
			 {270,271,272},
			 {280,281,282},				 
			 {290,291,292},
			 {300,301,302},				 
			 {310,311,312},
			 {320,321,322},
			 {330,331,332},
			 {340,341,342},
			 {350,351,352},
			 {360,361,362},
			 {370,371,372},
			 {380,381,382},				 
			 {390,391,392},				
			 {400,401,402},
			 {410,411,412},				 
			 {420,421,422},
			 {430,431,432}, 
			 {440,441,442},
			 {450,451,452},
			 {460,461,462},
			 {470,471,472},
			 {480,481,482}  };

		try{
		String sql= "select * from sTselect1 where uname='"+ uname + "'";
		ps1 = con.prepareStatement(sql);
		rs1= ps1.executeQuery();
		 while(rs1.next()){
			    str += rs1.getString(4).replaceFirst("Timage","");
			    str = str.replace(".png",",");	    	
			    }  
		 
		 str= str.substring(0,str.length()-1);
		 System.out.println("Tselect1 :"+ str);
		 
		 StringTokenizer st= new StringTokenizer(str,",");
		
			String sql1 = "select AES_DECRYPT(seq,'pass') from userregistration where user='" + uname + "'";
			ps2= con.prepareStatement(sql1);
			rs2= ps2.executeQuery();
			while(rs2.next()){
				System.out.println(rs2.getString(1));
				System.out.println("str"+ str);
				
				StringTokenizer st1= new StringTokenizer(rs2.getString(1),",");
				int len1= st1.countTokens();
				int[] arr1 = new int[len1];
				int index1=0;
				while(st1.hasMoreElements())
				{					
					arr1[index1++] = Integer.parseInt(st1.nextToken());
				}
				for(int ii=0,k=0;ii<49;ii++)
				for(int jj=0;jj<3 && k < len1;jj++)
				    if(temp[ii][jj] == arr1[k])    	
				    {
				    	arr1[k]= ii;
				    	k++;				    	
				    }
				int len2= st.countTokens();	
				int[] arr2 = new int[len2];
				int index2=0;
				while(st.hasMoreElements())
					{
					arr2[index2++] = Integer.parseInt(st.nextToken());					
					}
				    for(int ii=0,k=0;ii<49;ii++)
				    for(int jj=0;jj<3 && k < len2;jj++)
				    {
				    	if(temp[ii][jj] == arr2[k])			
				    	{
				    		arr2[k] = ii;
				    		k++;
				    	}
					}  // end of for
				    
				    if(len1 == len2)
				    {
				    	boolean[] arr= new boolean[len1];
				    	for(int p=0;p < len1; p++)
				    		if(arr1[p] == arr2[p])
								arr[p] = true;
							else
								arr[p] = false;
				    	 for(int p=0; p < len1; p++)
						    {
						    	if(arr[p] == true)
						    		flag= true;
						    	else
						    		{
						    		flag = false;
						    		break;  
						    		}
						    }
				    }			
				   
				}		// end of while rs2	
				
										
						
			
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		String sql2 = "delete from sTselect1 where uname='" + uname + "'"; 
	    try {
			ps3= con.prepareStatement(sql2);
			int z= ps3.executeUpdate();
		    if(z != 0)
		      System.out.println("deleted");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	   
	}
	return flag;
}

public void cleanupfinalimageview(){

	Connection con = getCon();
	PreparedStatement ps=null;
    String sql="";
    try{
    	sql= "delete from finalimageview";
    	ps= con.prepareStatement(sql);
    	int x= ps.executeUpdate();
    	if(x != 0)
    	   System.out.println("finalimageview cleaned");
    	
    }catch(SQLException e){
    	e.printStackTrace();
    }

}



public boolean testpwd(String uname,String pwd){
	boolean flag=false;
	Connection con = getCon();
	PreparedStatement ps=null;
	ResultSet rs=null;
	String sql="";
	System.out.println("user" + uname);
	System.out.println("pwd" + pwd);
	try{
		sql= "select AES_DECRYPT(cpwd,'pass') from userregistration where user='" + uname + "'";
		ps = con.prepareStatement(sql);
		rs= ps.executeQuery();
		while(rs.next()){
			if(rs.getString(1).equals(pwd))
				flag= true;
			
		}
		
		
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	return flag;
}


// verify gpwd login request
public boolean testgpwd(String name){
	Connection con = getCon();
	PreparedStatement ps=null;
	PreparedStatement ps1=null;
	PreparedStatement ps2=null;
	PreparedStatement ps3=null;
	ResultSet rs=null;
	ResultSet rs1=null;
	boolean flag=false;
	String str="";
	String str1="";
try{
	String sql= "select * from sTselect1 where uname='"+ name + "'";
		ps= con.prepareStatement(sql);
		rs = ps.executeQuery();
	    while(rs.next()){
	    	 str += rs.getString(4).replaceFirst("GImage","");
	 	    str = str.replace(".png",",");	    	
	    }
	    
	    str= str.substring(0,str.length()-1);
		String sql1 = "select AES_DECRYPT(seq,'pass') from userregistration where user='" + name + "'";
		ps1= con.prepareStatement(sql1);
		rs1= ps1.executeQuery();
		while(rs1.next()){
			System.out.println(rs1.getString(1));
			System.out.println("str"+ str);
			if(rs1.getString(1).equals(str))
				 flag = true;				
		}	
	    
	    	try{
	    	String sql2 = "delete from sTselect1 where uname='" + name + "'";
			ps2= con.prepareStatement(sql2);
		    int x= ps2.executeUpdate();
	    	}catch(SQLException e){
	    		e.printStackTrace();
	    	}
	         try{
	        	 String sql3= "delete from finalimageview";
	        	 ps3= con.prepareStatement(sql3);
	        	 int x = ps3.executeUpdate();
	        	 if(x != 0)
	        		 System.out.println("Finalimageview cleared");
	         }catch(SQLException e){
	        	 e.printStackTrace();
	         }
		
		
}catch(SQLException e){
	e.printStackTrace();
}
System.out.println(flag);
	return flag;
}


// store the final pwd after user confirms correctly the text captcha pwd in userregistration table
public boolean confirmfPwd(String uname){
	Connection con = getCon();
	PreparedStatement ps=null;
	PreparedStatement ps1=null;
	PreparedStatement ps2=null;
	PreparedStatement ps3=null;
	ResultSet rs=null;
	int count=0;
	boolean flag=false;
	
	String str="";
	try{
		
		String sql= "select * from sTselect where uname='"+ uname + "'";
		ps= con.prepareStatement(sql);
		rs = ps.executeQuery();
	    while(rs.next()){
	    count++;
	    str += rs.getString(2).replaceFirst("Timage","");
	    str = str.replace(".png",",");	    	
	    }    
		//str = str.subSequence(0,);
		str= str.substring(0,str.length()-1);
		String sql1 = "select * from ur where user='" + uname + "'";
		ps1= con.prepareStatement(sql1);
		rs= ps1.executeQuery();
		while(rs.next()){
			System.out.println(rs.getString(8));
			System.out.println("str"+ str);
			if(rs.getString(8).equals(str))
			{	 flag = true;
			   String s ="insert into userregistration (user,email,contact,loc,ptype,noofimageclicked,seq) values('"+ rs.getString(1) +"','" + rs.getString(2) + "'," + rs.getInt(3) + ",'" + rs.getString(4) + "'," + rs.getInt(5) + "," + rs.getInt(7) + ",AES_Encrypt(?,'pass'))";
			   PreparedStatement st=con.prepareStatement(s);  
			   st.setString(1,rs.getString(8));
			   int x= st.executeUpdate(); 
			   st.close();			
			}
		}	
		
		String sql2 = "delete from sTselect where uname='" + uname + "'"; 
	    ps2= con.prepareStatement(sql2);
	    int z= ps2.executeUpdate();
	    if(z != 0)
	      System.out.println("deleted from sTselect");
		
	   
	    	String sql3= "delete from ur where user='" + uname + "'";
	    	ps3= con.prepareStatement(sql3);
		    int s= ps3.executeUpdate();
		    if(z != 0)
		      System.out.println("deleted from user");
		    
	
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		try{
		rs.close();
		ps.close();
		ps1.close();
		ps2.close();
		con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
return flag;	
}
// store text pwd in db
public void storepwd(String uname,String pwd1){
	Connection con = getCon();
	PreparedStatement ps=null;
	PreparedStatement ps1=null;
	
	ResultSet rs=null;
	int type=1;
	String sql= "";
	try
	{
		sql = "update ur set cpwd='" + pwd1 + "' where user='"+ uname + "'";
		System.out.println(sql);
		ps = con.prepareStatement(sql);
		int x= ps.executeUpdate();
		if( x != 0)
		   System.out.println("user registered successfully");
	
			
	String sql1 = "select * from ur where user='" + uname + "'";
	ps1= con.prepareStatement(sql1);
	rs= ps1.executeQuery();
	while(rs.next()){
			System.out.println(rs.getString(6));
		   String s ="insert into userregistration (user,email,contact,loc,ptype,cpwd,noofimageclicked,seq) values('"+ rs.getString(1) +"','" + rs.getString(2) + "'," + rs.getInt(3) + ",'" + rs.getString(4) + "'," + rs.getInt(5) + ", AES_Encrypt(?,'pass') ," +rs.getInt(7) + ",'" + rs.getString(8)+ "')";
		   PreparedStatement st=con.prepareStatement(s);  
		   st.setString(1,rs.getString(6));
		   int x1= st.executeUpdate(); 
		}	
	String s1= "delete from ur where user='" + uname + "'";		
    PreparedStatement ps3= con.prepareStatement(s1);
    ps3.executeUpdate();
		
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	
	
}



//store the final pwd after user sets the graphical captcha pwd in userregistration table 1st time
public void gfinalPwd(String uname)
{
	Connection con = getCon();
	PreparedStatement ps=null;
	PreparedStatement ps1=null;
	PreparedStatement ps2=null;
	PreparedStatement ps3=null;
	
	ResultSet rs=null;
	int count=0;
	String str="";
	String str1="";
	try{	
	    String sql= "select * from sTselect where uname='"+ uname + "'";
		ps= con.prepareStatement(sql);
		rs = ps.executeQuery();
	    while(rs.next()){
	    count++;
	    str += rs.getString(2).replaceFirst("GImage","");
	    str = str.replace(".png",",");	    	
	    }    
	
	    String string =str.subSequence(0,str.length()-1).toString();
    
	    String sql1= "update ur set noofimageclicked=" + count + " where user='"+ uname + "'";
	    String sql2= "update ur set seq='" + str.subSequence(0,str.length()-1) + "' where user='"+ uname + "'";
	     
        
	    ps1= con.prepareStatement(sql1);
	   int x = ps1.executeUpdate();
	   if(x != 0)
		   System.out.println("UR updated successfully");
	    ps2= con.prepareStatement(sql2);
	    boolean y = ps2.execute();
         if(y)
        	 System.out.println("UR2 updated successfully");
	    
	   String sql3 = "delete from sTselect where uname='" + uname + "'"; 
	    ps3= con.prepareStatement(sql3);
	    int z= ps3.executeUpdate();
	    if(z != 0)
	      System.out.println("deleted");
	    
	}catch(SQLException e){
		e.printStackTrace();
	}
	finally{
		try{
		
		ps2.close();
		ps1.close();
		ps3.close();
		rs.close();
		con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}



// store the final pwd after user sets the text captcha pwd in userregistration table 1st time
public void finalPwd(String uname)
{
	Connection con = getCon();
	PreparedStatement ps=null;
	PreparedStatement ps1=null;
	PreparedStatement ps2=null;
	PreparedStatement ps3=null;
	
	ResultSet rs=null;
	int count=0;
	String str="";
	String str1="";
	try{	
	    String sql= "select * from sTselect where uname='"+ uname + "'";
		ps= con.prepareStatement(sql);
		rs = ps.executeQuery();
	    while(rs.next()){
	    count++;
	    str += rs.getString(2).replaceFirst("Timage","");
	    str = str.replace(".png",",");	    	
	    }    
	    
	  //  String sql1= "insert into userregistration (noofimageclicked,seq) values (" + count + ",'" + str.subSequence(0,str.length()-1) + "') where user='"+ uname + "'";
	    String sql1= "update ur set noofimageclicked=" + count + " where user='"+ uname + "'";
	    String sql2= "update ur set seq='" + str.subSequence(0,str.length()-1) + "' where user='"+ uname + "'";
	    
	    
	        
	    ps1= con.prepareStatement(sql1);
	    int x = ps1.executeUpdate();
	  //  if( x != 0)
	   //    System.out.println(x);
	    ps2= con.prepareStatement(sql2);
	    int y = ps2.executeUpdate();
	 //   if( y != 0)
	  //     System.out.println(x);
	   String sql3 = "delete from sTselect where uname='" + uname + "'"; 
	    ps3= con.prepareStatement(sql3);
	    int z= ps3.executeUpdate();
	    if(z != 0)
	      System.out.println("deleted");
	    
	}catch(SQLException e){
		e.printStackTrace();
	}
	finally{
		try{
		
		ps2.close();
		ps1.close();
		ps3.close();
		rs.close();
		con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}

public void storeTimg(String uname,String img){
	
	Connection con = getCon();
	PreparedStatement ps=null;
		try{	
		String sql= "insert into sTselect values('"+ uname + "','" + img + "')" ;
		ps = con.prepareStatement(sql);
		int x1 = ps.executeUpdate();
		if(x1 != 0)
			System.out.println("Image Selected");
		
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	
}





// store the pwd selected by user in Text Captcha
public void storeTimg1(String uname,String x,String y){
	
	Connection con = getCon();
	PreparedStatement ps=null;
	PreparedStatement ps1=null;
	String iname=null;
	int x0test=0;
	int x1test=0;
	try{
		String sql1= "select * from finalImageview where x<? and x1>? and y<? and y1>?";
		ps1 = con.prepareStatement(sql1);
		ps1.setInt(1,Integer.parseInt(x));	   
		ps1.setInt(2,Integer.parseInt(x));
		ps1.setInt(3,Integer.parseInt(y));
		ps1.setInt(4,Integer.parseInt(y));				
		ResultSet rs= ps1.executeQuery();		
		while(rs.next()){
			iname= rs.getString(2);
			x0test = rs.getInt(3);
			x1test = rs.getInt(5);
		}
		System.out.println(iname);
		if(iname.equals("Timagej.png") || iname.equals("Timagei.png"))
		{
		  if((Integer.parseInt(x) >= (x0test+20)) && (Integer.parseInt(x) <= (x1test-20)))	
		  {    }
		  else{
		String sql= "insert into sTselect1 values('"+ uname + "','" + x + "','"+ y + "','"+ iname +"')" ;
		ps = con.prepareStatement(sql);
		int x1 = ps.executeUpdate();
		if(x1 != 0)
			System.out.println("Image Selected");
		  }
		}
		else{
			String sql= "insert into sTselect1 values('"+ uname + "','" + x + "','"+ y + "','"+ iname +"')" ;
			ps = con.prepareStatement(sql);
			int x1 = ps.executeUpdate();
			if(x1 != 0)
				System.out.println("Image Selected");
			  }
	}catch(SQLException e){
		e.printStackTrace();
	}	
}

public void clearFinalImageView()
{
	Connection con = getCon();
	PreparedStatement ps1=null;
	try{
		
		String sql2= "delete from finalimageview";
		ps1= con.prepareStatement(sql2);
		int x= ps1.executeUpdate();
		if( x != 0){
			System.out.println("finalimageview cleared.");
		}
		
	}catch(SQLException e){
		e.printStackTrace();
	}

}

public void storeColarge(int no,String iname,int x0,int y0,int x1,int y1){
	
	Connection con = getCon();
	PreparedStatement ps=null;
		
	try{
		String sql1 = "insert into finalImageview values(?,?,?,?,?,?);";
		ps = con.prepareStatement(sql1);
		ps.setInt(1,no);
		ps.setString(2,iname);
		ps.setInt(3,x0);
		ps.setInt(4,y0);
		ps.setInt(5,x1);
		ps.setInt(6,y1);
		int z= ps.executeUpdate();
		//if(z != 0)
	//	System.out.println("Record Inserted Successfully");
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			ps.close();
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		
	}
	
}

public void storeSeq(String user){
	Connection con = getCon();
	PreparedStatement ps1=null;
	PreparedStatement ps2=null;
	PreparedStatement ps3=null;
	ResultSet rs=null;
	try{
		String sql1 = "select * from imageselect where userid='" + user + "'";
		String str=null;
		System.out.println(sql1);
		ps1 = con.prepareStatement(sql1);
		rs= ps1.executeQuery();
		if(rs.next())
		{
			str += String.valueOf(rs.getInt(1)) + ",";
			
		}
		System.out.println(str);
		
		String sql2 = "delete from imageselect where userid='" + user + "'";
		System.out.println(sql2);
		ps2 = con.prepareStatement(sql2);
		int y= ps2.executeUpdate();
		if(y != 0)
			System.out.println("Records deleted");
		
		/*String sql3 = "delete from finalImageview";
		System.out.println(sql3);
		ps3 = con.prepareStatement(sql3);
		int z= ps3.executeUpdate();
		if(z != 0)
			System.out.println("Records deleted");*/
		
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		try{
		rs.close();
		ps1.close();
		con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
}


public void userDelete(String user){

	ResultSet rs1=null;
	
	Connection con = getCon();
	PreparedStatement ps1=null;
	PreparedStatement ps2=null;
	boolean flagps2= false;
	
	
	try{
		String sql1	= "select * from imageSelect where userid = ?";
		ps1 = con.prepareStatement(sql1);
	    ps1.setString(1,user);	
		rs1 = ps1.executeQuery();
		
		if(rs1.next() == true)
			{
			String sql2 = "delete from imageSelect where userid = ?";
			ps2 = con.prepareStatement(sql2);
		    ps2.setString(1,user);	
			int z=ps2.executeUpdate();
			flagps2=true;
		//	System.out.println(z + "record deleted");
			}
	}catch(SQLException e){
		e.printStackTrace();
	}
	finally{
		try{
		rs1.close();
		ps1.close();
		if(flagps2 == true)
		ps2.close();
		con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}}
}

public void userSelect(String user,int count,int xcor,int ycor){
	

	ResultSet rs2=null;
	Connection con = getCon();
	
	PreparedStatement ps3=null;
	PreparedStatement ps4=null;
	boolean flagps2= false;
	int imgseq=-1;
	String imgname=null;
	try{
	/*String sql1	= "select * from imageSelect where userid = ?";
	ps1 = con.prepareStatement(sql1);
    ps1.setString(1,user);	
	rs1 = ps1.executeQuery();
	
	if(rs1.next() == true)
		{
		String sql2 = "delete from imageSelect where userid = ?";
		ps2 = con.prepareStatement(sql2);
	    ps2.setString(1,user);	
		int z=ps2.executeUpdate();
		flagps2=true;
	//	System.out.println(z + "record deleted");
		}*/
	
	String sql3 = "select * from finalImageview where x0<? and x1>? and y0<? and y1>?";
	ps3 = con.prepareStatement(sql3);
	ps3.setInt(1,xcor);	   
	ps3.setInt(2,xcor);
	ps3.setInt(3,ycor);
	ps3.setInt(4,ycor);
	rs2 = ps3.executeQuery();
	if(rs2.next() == true)
	{
		imgseq= rs2.getInt(1);
		imgname=rs2.getString(2);
	}
	
	 String sql4= "insert into imageSelect values(?,?,?,?,?,?)";
	 ps4 = con.prepareStatement(sql4);
     ps4.setInt(1,imgseq);
     ps4.setString(2,user);
     ps4.setInt(3,count);
     ps4.setInt(4,xcor);
     ps4.setInt(5,ycor);
     ps4.setString(6,imgname);
     int x= ps4.executeUpdate();
    // if(x != 0 )
    //	 System.out.println("Record inserted successfully");

	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
		rs2.close();
		ps3.close();
		ps4.close();
		con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		
	}
	
}
}
