
import java.util.Date;
import java.util.Iterator;

public class Program {
	public static void main(String[] args) {
		Position dev = new Position();
		dev.setId(2);
		dev.setPositionName(PositionName.DEV);
		Position pm = new Position(1, PositionName.PM);
		Position test = new Position(3, PositionName.TEST);
		Position leader = new Position(4, PositionName.LEADER);

		// tao 3 doi tuong
		Department phongDev = new Department(1, "phong Dev 1");
		Department phongHanhChinh = new Department(2, "phong Hanh Chinh");
		Department phongTest = new Department(3, "phong Test");

		// tao 3 account
		Account account1 = new Account(1, "Account 1", pm, phongHanhChinh);
		Account account2 = new Account(2, "Account 2", dev, phongDev);
		Account account3 = new Account(3, "Account 3", test, phongTest);
		Account account4 = new Account(5,"Account 4",test,phongTest);
		// tạo 3 group
		Group group1 = new Group(1, "An hai", 1);
		Group group2 = new Group(2, "An choi", 2);
		Group group3 = new Group(3, "Cham chi", 3);

		Group[] groupAc1 = { group1, group2 };
		account1.groups = groupAc1;
		account3.groups = new Group[] { group2, group3 };

		group1.accounts = new Account[] { account1 };
		group2.accounts = new Account[] { account1, account3 };
		group3.accounts = new Account[] { account3 };
		
/*
		// Question 1
		if (account2.department == null) {
			System.out.println("Nhan vien nay chua co phong ban");
		} else {
			System.out.println("Phong ban cua acc nay la" + account2.department.nameDepartment);
		}
		// Question 2
		if (account2.groups == null) {
			System.out.println("Nhan vien nay chua co group");
		} else {
			int slGroupThamGia = account2.groups.length;
			if (slGroupThamGia == 1 || slGroupThamGia == 2) {
				System.out.println("Group cua nhan vien nay la Java Fresher, C# Fresher");
			}
			if (slGroupThamGia == 3) {
				System.out.println("Nhan vien nay la nguoi quan trong tham gia nhieu group");

			}
			if (slGroupThamGia >= 4) {
				System.out.println("Nhan vien nay la nguoi hong chuyen tham gia nhieu group");
			}
		}
		// Question 5
		int slAccTrongGroup = group1.accounts.length;
		switch (slAccTrongGroup) {
		case 1:
			System.out.println("Nhom co 1 thanh vien");
			break;
		case 2:
			System.out.println("Nhom co 2 thanh vien");
			break;
		case 3:
			System.out.println("Nhom co 3 thanh vien");
			break;

		default:
			System.out.println("Nhom co nhieu thanh vien");
			break;
		}
		// Question 6
		if (account2.groups == null) {
			System.out.println("Nhan vien nay chua co group");
		} else {
			int slGroupAcc2ThamGia = account2.groups.length;
			switch (slGroupAcc2ThamGia) {
			case 1:
				System.out.println("Group cua nhan vien nay la Java Fresher, C# Fresher");
				break;
			case 2:
				System.out.println("Group cua nhan vien nay la Java Fresher, C# Fresher");
				break;
			case 3:
				System.out.println("Nhan vien nay la nguoi quan trong, tham gia nhieu group");
				break;
			case 4:
				System.out.println("Nhan vien nay la nguoi hong chuyen, tham gia tat ca group");
				break;
			default:
				break;
			}
		}
		// Question 7
		String pName = account1.position.positionName.toString();
		switch (pName) {
		case "Dev":
			System.out.println("Nguoi nay la Dev");
			break;

		default:
			System.out.println("K phai dev");
			break;
		}
		// Question 8
		Account[] mangAcc = { account1, account2, account3 };
		for (Account acc : mangAcc) {
			System.out.println("Id:" + acc.idAccount + acc.fullName + acc.userName);
		}

		
		// Question 9
		Department[] mangDep = { phongDev, phongHanhChinh, phongTest };
		for (Department dept : mangDep) {
			System.out.println("Id: " + dept.idDepartment + "Name: " + dept.nameDepartment);
		}
		// Question 10
		Account[] q10 = { account1, account2, account3 };
		for (int i = 0; i < q10.length; i++) {
			System.out.println("Thong tin account thu " + (i + 1));
			System.out.println("Email" + q10[i].email);
			System.out.println("Fullname" + q10[i].fullName);
			System.out.println("Phong ban" + q10[i].department.nameDepartment);
		}
		// Question 11
		Department[] q11 = { phongDev, phongHanhChinh, phongTest };
		for (int i = 0; i < q11.length; i++) {
			System.out.println("Thong tin department thu" + (i + 1));
			System.out.println("Id:" + q11[i].idDepartment);
			System.out.println("Name:" + q11[i].nameDepartment);
		}
		//Question 12
		for (int i = 0; i < 2; i++) {
			System.out.println("Thong tin account thu "+ (i+1));
			System.out.println("Email "+ q10[i].email);
			System.out.println("Fullname "+ q10[i].fullName);
			System.out.println("Phong ban"+q10[i].department.nameDepartment);
		}
		//Question 13
		for (int i = 0; i < q10.length; i++) {
			if (i != 1) {
				System.out.println("Thong tin account thu "+ (i+1));
				System.out.println("Email "+ q10[i].email);
				System.out.println("Fullname "+ q10[i].fullName);
				System.out.println("Phong ban"+q10[i].department.nameDepartment);
			}
		}
		System.out.println("----------------------------------------");
		//Question 14
		Account[] q14 = {account1,account2,account3,account4};
		for (int i = 0; i < q14.length; i++) {
			if(q14[i].idAccount < 4 ) {
				System.out.println("Thong tin account thu "+ (i+1));
				System.out.println("Email "+ q14[i].email);
				System.out.println("Fullname "+ q14[i].fullName);
				System.out.println("Phong ban"+q14[i].department.nameDepartment);
			}
		}
		
		Account[] q16 = {account1,account2,account3};
		int i = 0;
		while (i<q16.length) {
			System.out.println("Thong tin account thu " + (i + 1));
			System.out.println("Email" + q16[i].email);
			System.out.println("Fullname" + q16[i].fullName);
			System.out.println("Phong ban" + q16[i].department.nameDepartment);
			i++;
		}
	*/
		
		
	}
}
