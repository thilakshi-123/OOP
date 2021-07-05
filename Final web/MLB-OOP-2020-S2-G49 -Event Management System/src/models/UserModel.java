package models;

public class UserModel {
	private int userID;
	private String username;
	private String name;
	private String unic;
	private String uemail;
	private int uphone;
	private String uaddr;
	private String uaccType;
	private String upass;
	
	
	public UserModel() {
	}


	public UserModel(int userID, String username, String name, String unic, String uemail, int uphone, String uaddr,
			String uaccType, String upass) {
		super();
		this.userID = userID;
		this.username = username;
		this.name = name;
		this.unic = unic;
		this.uemail = uemail;
		this.uphone = uphone;
		this.uaddr = uaddr;
		this.uaccType = uaccType;
		this.upass = upass;
	}


	public int getUserID() {
		return userID;
	}


	public String getUsername() {
		return username;
	}


	public String getName() {
		return name;
	}


	public String getUnic() {
		return unic;
	}


	public String getUemail() {
		return uemail;
	}


	public int getUphone() {
		return uphone;
	}


	public String getUaddr() {
		return uaddr;
	}


	public String getUaccType() {
		return uaccType;
	}


	public String getUpass() {
		return upass;
	}


	public void setUserID(int userID) {
		this.userID = userID;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setUnic(String unic) {
		this.unic = unic;
	}


	public void setUemail(String uemail) {
		this.uemail = uemail;
	}


	public void setUphone(int uphone) {
		this.uphone = uphone;
	}


	public void setUaddr(String uaddr) {
		this.uaddr = uaddr;
	}


	public void setUaccType(String uaccType) {
		this.uaccType = uaccType;
	}


	public void setUpass(String upass) {
		this.upass = upass;
	}


	@Override
	public String toString() {
		return "UserModel [userID=" + userID + ", username=" + username + ", name=" + name + ", unic=" + unic
				+ ", uemail=" + uemail + ", uphone=" + uphone + ", uaddr=" + uaddr + ", uaccType=" + uaccType
				+ ", upass=" + upass + "]";
	}

	
	
	
}
