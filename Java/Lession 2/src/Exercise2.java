import java.util.Locale;

public class Exercise2 {

	public static void main(String[] args) {
		Exercise2 ex2 = new Exercise2();
		ex2.q4();	
	}
	public void q1() {
	//Question 1	
		int n = 5;
		System.out.println(n);
	}
	public void q2() {
	//Question 2
		int q2=100000000;
		System.out.printf(Locale.US,"%,d%n",q2);
	}
	public void q3() {
	//Question 3
		float q3 = (float) 5.567098f;
		System.out.printf("%5.4f%n",q3);
	}
	public void q4(){
	//Question 4
	String a = "Nguyen Van A";
	System.out.printf("Ten toi la:"+a+" va toi dang doc than");
	}
	
}
