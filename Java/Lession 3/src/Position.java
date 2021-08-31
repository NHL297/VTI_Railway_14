
public class Position {
	int idPosition;
	PositionName positionName;

	//ham khoi tao
	public Position(int idPosition, PositionName positionName) {
		super();
		this.idPosition = idPosition;
		this.positionName = positionName;
	}
	
	public Position() {
		super();
	}

	// phương thức (method) của đối tượng
	public int getId() {
		return idPosition;
	}
	
	public void setId(int id_) {
		this.idPosition =id_;
		return;
	}

	public PositionName getPositionName() {
		return positionName;
	}

	public void setPositionName(PositionName positionName) {
		this.positionName = positionName;
	}

	@Override
	public String toString() {
		return "Position [idPosition=" + idPosition + ", positionName=" + positionName + "]";
	}
	
	
	
}
