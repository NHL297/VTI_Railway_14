
public class Group {
	int idGroup;
	String groupName;
	int idCreator;
	String createDate;
	
	public Group(int idGroup, String groupName, int idCreator) {
		super();
		this.idGroup = idGroup;
		this.groupName = groupName;
		this.idCreator = idCreator;
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
	@Override
	public String toString() {
		return "Group [idGroup=" + idGroup + ", groupName=" + groupName + ", idCreator=" + idCreator + "]";
	}
	
}
