
import java.time.LocalDate;
import java.util.Date;
public class Account implements Comparable<Account> {
	int idAccount;
	String userName;
	String fullName;
	String email;
	Position position;
	Department department;
	LocalDate createDate;
	Gender  gender;
	Group groups[];
	public Account(int idAccount, String userName, Position position, Department department) {
		super();
		this.idAccount = idAccount;
		this.userName = userName;
		this.position = position;
		this.department = department;
	}
	
	public Account() {
		super();
	}

	public int getIdAccount() {
		return idAccount;
	}
	public void setIdAccount(int idAccount) {
		this.idAccount = idAccount;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Position getPosition() {
		return position;
	}
	public void setPosition(Position position) {
		this.position = position;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public LocalDate getCreateDate() {
		return createDate;
	}
	public void setCreateDate(LocalDate createDate) {
		this.createDate = createDate;
	}
	public Gender getGender() {
		return gender;
	}
	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public Group[] getGroups() {
		return groups;
	}

	public void setGroups(Group[] groups) {
		this.groups = groups;
	}

	@Override
	public String toString() {
		return "Account [idAccount=" + idAccount + ", userName=" + userName + ", fullName=" + fullName + ", email="
				+ email + ", position=" + position + ", department=" + department + ", createDate=" + createDate
				+ ", gender=" + gender + "]";
	}

	@Override
	public int compareTo(Account o) {
		
		if (this.idAccount == o.idAccount && this.userName.equals(o.userName)) {
			return 1;
		}
		
		return 0;
	}
	
}
