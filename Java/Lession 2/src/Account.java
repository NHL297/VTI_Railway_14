
import java.util.Date;
public class Account {
	int idAccount;
	String userName;
	String fullName;
	String email;
	Position position;
	Department department;
	Date createDate;
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
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
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
	
}
