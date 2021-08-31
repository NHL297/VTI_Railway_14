import java.time.LocalDate;
import java.util.Random;
import java.util.Date;
public class Lession3 {

	public static void main(String[] args) {
/*	String a1 = "      Hello           ";
	String a2 = new String("Hello,  Tuan Anh, Van Thanh");
	
//	System.out.println("a1 = " + a1.toLowerCase().trim());
//	System.out.println("a2 = " + a2.toLowerCase().trim());
	
	String[] aStrings = a2.split(",");
	for (int i = 0; i < aStrings.length; i++) {
	if("Van Thanh".toLowerCase().equals(aStrings[i].trim().toLowerCase()))
		System.out.println(aStrings[i].trim());
	}
//	System.out.println("--------------------");
//	System.out.println(a1.toLowerCase().trim().equals(a2.toLowerCase().trim()));
	
		Account acc1 = new Account();
		acc1.setIdAccount(1);
		acc1.setUserName("Account1");
		Account acc2 = new Account();
		acc2.setIdAccount(2);
		acc2.setUserName("Account2");
		Account acc3 = new Account();
		acc3.setIdAccount(1);
		acc3.setUserName("Account1");
		if (acc1.compareTo(acc2)==1) {
			System.out.println("2 account giong nhau");
		}else {
			System.out.println("2 account khac nhau");
		}
		*/
		Account acc1 = new Account();
		acc1.setIdAccount(1);
		acc1.setUserName("Account1");
		
		// lấy ngẫu nhiên 1 số có 5 chữ số(những số dưới 5 chữ số thì sẽ thêm)
		//có số 0 ở đầu cho đủ 5 chữ số
		//CHuyen no thanh String => lay length
	/*	Random rd = new Random();
		Integer number = rd.nextInt(99999);
		int leght=number.toString().length();
		String nbString = number.toString();
		
		System.out.println(nbString.charAt(leght - 2)+""+nbString.charAt(leght - 1));
		System.out.println(nbString.charAt(leght-1));
		*/
	
		/*
		switch (number.toString().length()) {
		case 5:{
			System.out.println(number);
			break;
		}
		case 4:{
			System.out.println("0"+number);
		}
		case 3:{
			System.out.println("00"+number);
		}
		case 2:{
			System.out.println("000"+number);
		}
		case 1:{
			System.out.println("0000"+number);
		}
		default:
			break;
		}
		*/
	/*	Account[] mangAcc = new Account[5];
		for (int i = 0; i < mangAcc.length; i++) {
			Account acc = new Account();
			acc.idAccount =   i;
			acc.email = "Email" +i;
			acc.userName="Username" +i;
			acc.fullName="fullname" +i;
			acc.createDate=LocalDate.now();
			mangAcc[i]=acc;
		}
		for(Account acc:mangAcc) {
			System.out.println(acc);
		}
		*/
		Integer luong =5000;
		float a = luong;
		System.out.printf("%.2f",luong);
	}
	

}
