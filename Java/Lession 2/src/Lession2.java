import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Scanner;

import java.util.Date;

public class Lession2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int x = 5;
	/*	
	switch (x) {
	case 1:
		System.out.println("x bang 1");
		break;
	case 2:
		System.out.println("x bang 2");
		break;
	case 5:
		System.out.println("x bang 5");
		break;
	default:
		System.out.println("default x khong bang case nao ca");
		break;
	}*/
	int a[] = {10,20,30,40};
	//System.out.println("do dai cua mang a = " + a.length);
	/*for (int i = 0; i < a.length; i++) {
		System.out.println("a["+i+"]="+a[i]);
	}*/
//	for (int i = 0; i < 5; i++) {
//		System.out.println(i);
//	}
/*	int index = 0;
	for(int xyz:a) {
			System.out.println("index"+index+"=>"+xyz);
			index++;
	}
	String[] className = {"Lop 6","Lop 7","Lop 8"};
	for(String o: className) {
		System.out.println(o);
	}*/
	int i = 0;
	
	/*while(i<5) {
		if (i==3) {
			break;
		}
		System.out.println(i);
		i++;
	}*/
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
	try {  
		Date date = simpleDateFormat.parse("20/04/2021");
		System.out.println("Date =" + date);
		String dateString = simpleDateFormat.format(date);
		System.out.println("Date string=" + dateString);
	} catch(java.text.ParseException e) {
	    e.printStackTrace();
	}  
	//int c = 10;
	//int b = 2;
	//System.out.println(c+b);
	
	
	}

}
