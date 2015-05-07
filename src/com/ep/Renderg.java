package com.ep;

import java.awt.AlphaComposite;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.MouseInfo;
import java.awt.Point;
import javax.swing.JFrame;
import java.awt.PointerInfo;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;
import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.geom.*;
import java.awt.image.*;
import java.io.*;
import java.net.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;
import com.ep.Connectiondb;
import javax.imageio.*;
import javax.swing.*;
import javax.swing.event.*;
import java.sql.Connection;
import java.sql.*;
import java.util.StringTokenizer;

public class Renderg extends JComponent{

	private float alpha = 1;

   int[] temp= {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201};

	// creates colarge, captures co-ordinates and stores in db
	public void coLarge(String uname){
		  int rows = 10;   //we assume the no. of rows and cols are known and each chunk has equal width and height  
		    int cols = 15;  
		    int chunks = rows * cols;
		    int chunkWidth, chunkHeight;  
		    int type;  

		     String sequence= (new Connectiondb()).fetchSeq(uname);
		    //System.out.println("SEQ :"+ sequence);
		   	 int l= sequence.length();
		   	 int[] arr=new int[l];
		   	 for(int j=0;j<l;j++)
		   		 arr[j]= -1;
		   	 /*for(int i=0; i<l;i++){
		   		 arr[i]= Integer.parseInt(sequence.subSequence(i,i+1).toString());
		   	 }
		     System.out.println("1st ;");
		   	 for(int i=0;i<l;i++)
		   	*/	
		   	 
		   /*	 for(int i=0;i <l;i++)
		   	 for(int j=i+1;j<l-1;j++)
		   		 if(arr[i] != "-1" )
		   		 if(arr[i].equals(arr[j]))
		            arr[j]= "-1";
		   	System.out.println("2nd :"+arr);*/
		   	int o=0;
		    StringTokenizer st= new StringTokenizer(sequence,",");
		    String str1=null;
		   while(st.hasMoreElements()){
               str1= st.nextToken();
            		  if(str1.equals(","))
            	   continue;
               else{
               arr[o]= Integer.parseInt(str1);
			   o++;
               }
		   }
		   System.out.println("here");
		   for(int j=0;j<l;j++){
			   System.out.println(arr[j]);
		   }
		   for(int j=0;j<l;j++)
		   for(int k=j+1; k < l-1;k++)
		   {
			   if(arr[j] == arr[k])
				   arr[k] = -1;
		   }
		   System.out.println("now");
		   for(int j=0;j<l;j++){
			   System.out.println(arr[j]);
		   }
		   int count=0;
		   for(int j=0;j<l;j++){
			   if(arr[j] != -1)
			   count++;
		   }
		   System.out.println("Count :"+ count);
		   int[] arr1 = new int[count];
		   for(int j=0,k=0;j<l;j++){
			   if(arr[j] == -1)
			   continue;
			   else
				 {arr1[k]= arr[j];
				   k++;
				 }
		   }
		   System.out.println("final");
		   for(int j=0;j<count;j++){
			   System.out.println(arr1[j]);
		   }
		   
		   //    int len= st.countTokens();
		
		     
		     /* for(int i=0; i < len-1; i++)
			  if(sequence.subSequence(i,i)== "-1")
				  continue;
			  else if(sequence.subSequence(i,i).equals(sequence.subSequence(i+1,i+1)))
			    	sequence.replace(sequence.subSequence(i+1,i+1),"-1");
		  */
		
		 //    String[] str= new String[len];
		  //   int a=0;
		
		//     System.out.println("String :"+ str.toString());
		     
		     
		   /*  for(int j=0;j<len-1;j++)
		     for(int i=j+1;i<len;i++){
		        System.out.println("str["+j+"] :" + str[j]);
		        System.out.println("str["+i+"] :" + str[i]);
		    	 if(str[j].compareTo(str[i])==0)
		    	 {		    		 
		    		 for(int k=i; k<len-1;k++)
		    		 {	 str[k]=str[k+1];
		    		     str[k+1]= "0";
		    		 }
		    		 
		    	 }
		    	 
		     }*/
		//     System.out.println("Remaining SEQ: "+str.length);

		    
		    
		 // creating list for generation unique random number
	        ArrayList<Integer> list = new ArrayList<Integer>();
	        for (int i=0; i<201; i++) {
	            list.add(new Integer(i));
	        }
	        Collections.shuffle(list);   // shuffle the list to create non-sorted list
	        
	        //fetching image files  
	    File[] imgFiles = new File[201];  
	    String[] filenames= new  String[201];
	 
	    for(int j=0; j< count; j++)
	    {
	     if(list.indexOf(arr1[j]) <= 150)
	    	 continue;
	     else{
	    	 int max=149;
	    	 int min=0;
	    	 Random rn = new Random();
	    	 int var= (rn.nextInt(max - min + 1) + min);
	    	 list.remove(var);
	    	 list.add(var,arr1[j]);
	     }
	    }
	    
	 
	    for(int j : list)
	    {
	    	imgFiles[j] = new File("GImage" + temp[j] + ".png");
	   
	    }
	  
	  //creating a bufferd image array from image files  
	       
	    BufferedImage[] buffImages = new BufferedImage[chunks];  
		    
	    for (int i = 0; i < 201; i++) {  
	        try {
	        	  buffImages[i] = ImageIO.read(new File("C:/workspace/Captcha/images/"+imgFiles[list.get(i)]));
	        	 	filenames[i]= imgFiles[list.get(i)].getName();
			} catch (Exception e) {
				// TODO Auto-generated catch block

			}  
	    }  
	    type = 6;  
	    chunkWidth = buffImages[0].getWidth();  
	    chunkHeight = buffImages[0].getHeight();
	    BufferedImage finalImg= null;
	 try{
	    //Initializing the final image  
		  finalImg= new BufferedImage(chunkWidth*cols, chunkHeight*rows, type);  
	    
	 }catch(IllegalArgumentException e){
		  finalImg = new BufferedImage(chunkWidth*cols, chunkHeight*rows, type);
	 }
	    int imgx = 0;
	    int imgy = 0;
	    int num = 0;
	    
	// Set Background Color of Colarge   
	    		Graphics2D    graphics = finalImg.createGraphics();
	    		graphics.setPaint(Color.WHITE);
	    		graphics.fillRect ( 0, 0, finalImg.getWidth(), finalImg.getHeight() );
	    
	   
	    		(new Connectiondb()).clearFinalImageView();
	    for (int i = 0,k=0; i < rows; i++) {  
	    	imgx = 0;
	    	imgy += 50;	    	
	    	for (int j = 0; j < cols; j++,k++) {  
	            finalImg.createGraphics().drawImage(buffImages[num], chunkWidth * j, chunkHeight * i, null);  
	            imgx += 50;
	            (new Connectiondb()).storeColarge(num,filenames[k],imgx-50,imgy-50,imgx,imgy);
	            num++;      		
	        }  
	    }  
	  
	    try {
			ImageIO.write(finalImg, "png", new File("C:/workspace/Captcha/WebContent/img/finalImg.png"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
	   try{
		   (new Connectiondb()).userDelete("ram");
	   }
	   catch(Exception e){
		   e.printStackTrace();
	   }
	   (new Connectiondb()).storeSeq("ram");
	}

	
	
	// creates composite images
	public Renderg() throws IOException{  }	

   public void setAlpha(float alpha) {
        this.alpha = alpha;
        repaint();
    }
  	
}
