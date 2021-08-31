import java.util.Iterator;
import java.util.Scanner;

public class lession31 {
	public static void main(String[] args) {
		lession31 ex1 = new lession31();
		ex1.ex6q6();
	}

	public void q2() {
		String xString = "123124";
		int a = Integer.parseInt(xString);
		System.out.println(a + 9);
	}

	public void q3() {
		Integer i = Integer.valueOf("1234567");
		int x = i;
		System.out.println(i);
	}

	public void ex5q4() {
		String a = "Nhap mot xau ki tu";
		String[] w = a.trim().split(" ");
		for (String string : w) {
			System.out.println(string);
		}
		System.out.println("So luong tu trong cau = " + w.length);
	}

	public void ex5q3() {
		Scanner sc = new Scanner(System.in);
		System.out.println("Nhap chuoi ki tu");
		String a = sc.nextLine();
		String x = a.charAt(0) + "";
		a = a.replaceFirst(x, x.toUpperCase());
		System.out.println(a);
	}

	public void ex5q5() {
		Scanner sc = new Scanner(System.in);
		System.out.println("Nhap chuoi");
		String a = sc.next();
		String[] w = a.trim().split("");
		for (int i = 0; i < w.length; i++) {
			System.out.println(a.charAt(i));
		}
	}

	public void ex5q7() {
		// Chuan hoa ten "nguyen van nam"
		Scanner sc = new Scanner(System.in);
		System.out.println("Nhap ten: ");
		String a = sc.nextLine();
		String[] w = a.trim().split(" ");
		for (int i = 0; i < w.length; i++) {
			String x = w[i].substring(0, 1);
			x = x.toUpperCase();
			w[i] = x + w[i].substring(1, w[i].length()).toLowerCase();
		}
		a = "";
		for (String string : w) {
			a = a + string + " ";
		}
		System.out.println(a);
	}

	public void ex5q9() {
		String name = "Nguyen Van Test";
		// "tseT naV neyugN"
		// Test Van Nguyen
		for (int i = name.length() - 1; i >= 0; i--) {
			System.out.print(name.charAt(i));
		}

		String[] aStrings = name.trim().split(" ");
		name = "";
		for (int i = aStrings.length - 1; i >= 0; i--) {
			System.out.println(aStrings[i]);
			name = name + aStrings[i] + " ";
		}
		System.out.println(name);

	}

	public void ex5q8() {
		Group gr1 = new Group(1, "Java 1", 1);
		Group gr2 = new Group(2, "Java 2", 1);
		Group gr3 = new Group(3, "Java 3", 1);
		Group gr4 = new Group(4, "Java 4", 1);
		Group gr5 = new Group(5, "C++ ", 1);
		String[] a = { gr1.groupName, gr2.groupName, gr3.groupName, gr4.groupName, gr5.groupName };
		for (int i = 0; i < a.length; i++) {
			if (a[i].contains("Java")) {
				System.out.println(a[i]);
			}
		}
	}

	public void ex5q11() {
		int count = 0;
		String a = "aaaaaaaaaaaaa";
		for (int i = 0; i < a.length(); i++) {
			if ('a' == a.charAt(i)) {
				count = count + 1;
			}
		}
		System.out.println(count);
	}

	public void ex6q1() {
		Department dep1 = new Department(1, "Phong A");
		Department dep2 = new Department(2, "Phong B");
		Department dep3 = new Department(3, "Phong Dev");
		Department[] dep = { dep1, dep2, dep3 };
		for (int i = 0; i < dep.length; i++) {
			System.out.println(dep[i].toString());
		}

	}

	public void ex6q4() {
		Department dep1 = new Department(1, "Phong A");
		Department dep2 = new Department(2, "Phong B");
		Department dep3 = new Department(3, "Phong Dev");
		Department[] dep = { dep1, dep2, dep3 };
		if (dep[0].nameDepartment=="Phong A") {
			System.out.println("Phong ban thu 1 la phong A");
		}else {
			System.out.println("Phong ban thu 1 ko la phong A");
		}
	}
	public void  ex6q6() {
		Department dep1 = new Department(1,"Accounting");
		Department dep2 = new Department(2,"Boss of director");
		Department dep3 = new Department(3,"Marketing");
		Department dep4 = new Department(4,"Sale");
		Department dep5 = new Department(5,"Waiting room");
		Department[] dep = {dep1,dep2,dep3,dep4,dep5};
		for (int i = 0; i < dep.length; i++) {
			for (int j = 0; j < dep.length - 1; j++) {
				if (dep[i].nameDepartment.compareToIgnoreCase(dep[j].nameDepartment)<0) {
					Department temp = dep[i];
					dep[i]=dep[j];
					dep[j]=temp;
				}
			}

		}
		for(Department a:dep) {
			System.out.println(a);
		}
	}
}
