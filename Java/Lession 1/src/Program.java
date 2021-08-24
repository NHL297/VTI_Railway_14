
public class Program {
	public static void main(String[] args) {
		Position dev = new Position();
		dev.setId(2);
		dev.setPositionName(PositionName.DEV);
		Position pm = new Position(1,PositionName.PM);
		Position test = new Position(3,PositionName.TEST);
		
		
		//tao 3 doi tuong
		Department phongDev = new Department(1,"phong Dev 1");
		Department phongHanhChinh = new Department(2,"phong Hanh Chinh");
		Department phongTest = new Department(3,"phong Test");
		
		// tao 3 account
		Account account1 = new Account(1,"Account 1", pm,phongHanhChinh);
		Account account2 = new Account(2,"Account 2", dev,phongDev);
		Account account3 = new Account(3,"Account 3", test,phongTest);
		
		// tạo 3 group
		Group group1 = new Group(1,"An hai",1);
		Group group2 = new Group(2,"An choi",2);
		Group group3 = new Group(3,"Cham chi",3);
		
		// tạo 3 groupaccount
		GroupAccount gA1 = new GroupAccount(1,1);
		GroupAccount gA2 = new GroupAccount(1,2);
		GroupAccount gA3 = new GroupAccount(1,3);
		
		
		//System.out.println(account1.toString());
		
		/*Account account2 = new Account();
		account2.setIdAccount(2);
		account2.setPosition(pm);
		account2.setFullName("Test 2");
		account2.setGender(Gender.MALE);
		*///System.out.println(account1.toString());
	}
}
