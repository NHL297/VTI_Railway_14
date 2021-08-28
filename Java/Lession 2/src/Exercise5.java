import java.util.Scanner;

public class Exercise5 {
	public static void main(String[] args) {
		Exercise5 ex5 = new Exercise5();
		ex5.q8();
	}

	public void q1() {

		Scanner sc = new Scanner(System.in);
		System.out.println("Nhap 3 so nguyen vao chuong trinh:");
		int a = sc.nextInt();
		int b = sc.nextInt();
		int c = sc.nextInt();
		System.out.println("" + a + "" + b + "" + c);
	}

	public void q2() {
		Scanner sc = new Scanner(System.in);
		System.out.println("Nhap 2  so thuc vao chuong trinh: ");
		float a = sc.nextFloat();
		float b = sc.nextFloat();
		System.out.println("" + a + "" + b);
	}

	public void q3() {
		Scanner sc = new Scanner(System.in);
		System.out.println("Moi nhap ho va ten: ");
		String a = sc.nextLine();
		System.out.println("Ho ten vua nhap la:" + a);
	}

	public void q5() {
		Scanner sc = new Scanner(System.in);
		System.out.println("Tao moi account");
		Account acount = new Account();
		System.out.println("Id: ");
		acount.idAccount = sc.nextInt();
		System.out.println("Username: ");
		acount.userName = sc.next();
		System.out.println("Fullname: ");
		acount.fullName = sc.next();
		System.out.println("Email: ");
		acount.email = sc.next();
		System.out.println("Department: ");
		int idPos = sc.nextInt();
		switch (idPos) {
		case 1:
			Position pos1 = new Position();
			pos1.positionName = PositionName.DEV;
			acount.position = pos1;
			break;
		case 2:
			Position pos2 = new Position();
			pos2.positionName = PositionName.TEST;
			acount.position = pos2;
			break;
		case 3:
			Position pos3 = new Position();
			pos3.positionName = PositionName.SCRUM_MASTER;
			acount.position = pos3;
			break;
		case 4:
			Position pos4 = new Position();
			pos4.positionName = PositionName.PM;
			acount.position = pos4;
			break;
		default:
			break;
		}
		System.out.println("Thong tin account vua tao:"+acount.idAccount +acount.userName+acount.fullName+acount.email+acount.position.positionName);
	}
	public void q6() {
		System.out.println("Tao Department:");
		Scanner sc = new Scanner(System.in);
		Department dept = new Department();
		System.out.println("Id cua Department: ");
		dept.idDepartment = sc.nextInt();
		System.out.println("Name cua Department: ");
		dept.nameDepartment = sc.next();
		System.out.println("Thong tin department vua tao: " + dept.idDepartment+"  "+dept.nameDepartment);
	}
	public void q8() {
		Scanner sc = new Scanner(System.in);
		int a;
		while (true) {
			System.out.println("1.Tao moi account");
			System.out.println("2.Tao moi department");
			a = sc.nextInt();
			if(a==1||a==2) {
				switch (a) {
				case 1:
					q5();
					break;
				case 2:
					q6();
					break;
				default:
					break;
				}
				return;
			}else {
				System.out.println("Nhap lai");
			}
		}
	}
}
