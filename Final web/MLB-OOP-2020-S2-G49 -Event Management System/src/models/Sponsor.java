package models;

public class Sponsor {
	private int sid;
	private String cname;
	private String caddress;
	private String cemail;
	private int camount;
	private String tmfrom;
	private String tmto;
	public Sponsor() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Sponsor(int sid, String cname, String caddress, String cemail, int camount, String tmfrom, String tmto) {
		super();
		this.sid = sid;
		this.cname = cname;
		this.caddress = caddress;
		this.cemail = cemail;
		this.camount = camount;
		this.tmfrom = tmfrom;
		this.tmto = tmto;
	}
	public int getSid() {
		return sid;
	}
	public String getCname() {
		return cname;
	}
	public String getCaddress() {
		return caddress;
	}
	public String getCemail() {
		return cemail;
	}
	public int getCamount() {
		return camount;
	}
	public String getTmfrom() {
		return tmfrom;
	}
	public String getTmto() {
		return tmto;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}
	public void setCemail(String cemail) {
		this.cemail = cemail;
	}
	public void setCamount(int camount) {
		this.camount = camount;
	}
	public void setTmfrom(String tmfrom) {
		this.tmfrom = tmfrom;
	}
	public void setTmto(String tmto) {
		this.tmto = tmto;
	}
	@Override
	public String toString() {
		return "sponsor [sid=" + sid + ", cname=" + cname + ", caddress=" + caddress + ", cemail=" + cemail
				+ ", camount=" + camount + ", tmfrom=" + tmfrom + ", tmto=" + tmto + "]";
	}
	
	
	
}

