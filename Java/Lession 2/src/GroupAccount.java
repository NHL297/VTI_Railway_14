import java.util.Date;
public class GroupAccount {
	int idGroup;
	int idAccount;
	Date joinDate;
	
	public GroupAccount(int idGroup, int idAccount) {
		super();
		this.idGroup = idGroup;
		this.idAccount = idAccount;
	}
	
	public GroupAccount() {
		super();
	}

	public int getIdGroup() {
		return idGroup;
	}
	public void setIdGroup(int idGroup) {
		this.idGroup = idGroup;
	}
	public int getIdAccount() {
		return idAccount;
	}
	public void setIdAccount(int idAccount) {
		this.idAccount = idAccount;
	}
	
	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	@Override
	public String toString() {
		return "GroupAccount [idGroup=" + idGroup + ", idAccount=" + idAccount + "]";
	}
	
}
