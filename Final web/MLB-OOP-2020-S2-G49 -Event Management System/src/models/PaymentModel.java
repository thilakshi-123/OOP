package models;

import java.sql.Date;

public class PaymentModel {

	private String receiptNum;
	private String userID;
	private double amount;
	private int cardNum;
	private Date cardExpDate;
	private String payDate; 
	
	public PaymentModel(String receiptNum, String userID, double amount, int cardNum, Date cardExpDate , String payDate) {
		super();
		this.receiptNum = receiptNum;
		this.userID = userID;
		this.amount = amount;
		this.cardNum = cardNum;
		this.cardExpDate = (Date) cardExpDate;
		this.payDate = payDate;
	}


	public PaymentModel() {
		super();
		// TODO Auto-generated constructor stub
	}


	
	
	public String getReceiptNum() {
		return receiptNum;
	}


	public String getUserID() {
		return userID;
	}


	public double getAmount() {
		return amount;
	}


	public int getCardNum() {
		return cardNum;
	}


	public Date getCardExpDate() {
		return cardExpDate;
	}


	public String getPayDate() {
		return payDate;
	}


	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}


	@Override
	public String toString() {
		return "PaymentModel [receiptNum=" + receiptNum + ", userID=" + userID + ", amount=" + amount + ", cardNum="
				+ cardNum + ", cardExpDate=" + cardExpDate + "]";
	}


	
	
	
	
}
