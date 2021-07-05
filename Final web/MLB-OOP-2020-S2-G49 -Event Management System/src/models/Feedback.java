package models;

public class Feedback {

	private int fdID;
	private String name;
	private String fdbk;
	
	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Feedback(int fdID, String name, String fdbk) {
		super();
		this.fdID = fdID;
		this.name = name;
		this.fdbk = fdbk;
	}
	public int getFdID() {
		return fdID;
	}
	public String getName() {
		return name;
	}
	public String getFdbk() {
		return fdbk;
	}
	public void setFdID(int fdID) {
		this.fdID = fdID;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setFdbk(String fdbk) {
		this.fdbk = fdbk;
	}
	@Override
	public String toString() {
		return "Feedback [fdID=" + fdID + ", name=" + name + ", fdbk=" + fdbk + "]";
	}
	

	
	
	
}