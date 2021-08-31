import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Scanner;
import java.util.Date;
public class Group {
	int idGroup;
	String groupName;
	int idCreator;
	Date createDate;
	Account accounts[];
	public Group(int idGroup, String groupName, int idCreator) {
		super();
		this.idGroup = idGroup;
		this.groupName = groupName;
		this.idCreator = idCreator;
	}
	
	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Group() {
		super();
	}

	public int getIdGroup() {
		return idGroup;
	}
	public void setIdGroup(int idGroup) {
		this.idGroup = idGroup;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public int getIdCreator() {
		return idCreator;
	}
	public void setIdCreator(int idCreator) {
		this.idCreator = idCreator;
	}
	
	public Account[] getAccounts() {
		return accounts;
	}

	public void setAccounts(Account[] accounts) {
		this.accounts = accounts;
	}

	@Override
	public String toString() {
		return "Group [idGroup=" + idGroup + ", groupName=" + groupName + ", idCreator=" + idCreator + "]";
	}
	
}
