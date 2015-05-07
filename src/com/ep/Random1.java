package com.ep;

import java.util.*;

public class Random1 {

int max=2;
int min=0;
int i=0;
Random1(){
Random rn = new Random();	

for(int j=0;j<49;j++)
{
	i=rn.nextInt(max - min + 1) + min;
	System.out.println(i);
}

}
public static void main(String[] arg){
	new Random1();
	StringTokenizer st= new StringTokenizer("12,2,34",",");
	while(st.hasMoreElements())
		System.out.println(st.nextToken());
	
	}
	


}
