package models;

public class EventModel {

	private int eventID;
	private int userID;
	private String eCat;
	private int eCap;
	private String eDate;
	private String eTime;
	private String eCity;
	private String spMsg;
	private double ebudget;
	public EventModel(int eventID, int userID, String eCat, int eCap, String eDate, String eTime, String eCity,
			String spMsg, double ebudget) {
		super();
		this.eventID = eventID;
		this.userID = userID;
		this.eCat = eCat;
		this.eCap = eCap;
		this.eDate = eDate;
		this.eTime = eTime;
		this.eCity = eCity;
		this.spMsg = spMsg;
		this.ebudget = ebudget;
	}
	public int getEventID() {
		return eventID;
	}
	public int getUserID() {
		return userID;
	}
	public String geteCat() {
		return eCat;
	}
	public int geteCap() {
		return eCap;
	}
	public String geteDate() {
		return eDate;
	}
	public String geteTime() {
		return eTime;
	}
	public String geteCity() {
		return eCity;
	}
	public String getSpMsg() {
		return spMsg;
	}
	public double getEbudget() {
		return ebudget;
	}
	public void setEventID(int eventID) {
		this.eventID = eventID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public void seteCat(String eCat) {
		this.eCat = eCat;
	}
	public void seteCap(int eCap) {
		this.eCap = eCap;
	}
	public void seteDate(String eDate) {
		this.eDate = eDate;
	}
	public void seteTime(String eTime) {
		this.eTime = eTime;
	}
	public void seteCity(String eCity) {
		this.eCity = eCity;
	}
	public void setSpMsg(String spMsg) {
		this.spMsg = spMsg;
	}
	public void setEbudget(double ebudget) {
		this.ebudget = ebudget;
	}
	@Override
	public String toString() {
		return "EventModel [eventID=" + eventID + ", userID=" + userID + ", eCat=" + eCat + ", eCap=" + eCap
				+ ", eDate=" + eDate + ", eTime=" + eTime + ", eCity=" + eCity + ", spMsg=" + spMsg + ", ebudget="
				+ ebudget + "]";
	}
	
	
	
}
