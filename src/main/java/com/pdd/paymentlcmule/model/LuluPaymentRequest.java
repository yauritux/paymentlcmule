package com.pdd.paymentlcmule.model;

import java.io.Serializable;
import java.util.Date;
import java.util.UUID;

import com.fasterxml.jackson.annotation.JsonProperty;

public class LuluPaymentRequest implements Serializable {

	private static final long serialVersionUID = 5398607793928838513L;

	@JsonProperty("transaction_id")
	private String transactionId;
	
	@JsonProperty("customer_id")
	private String customerId;
	
	@JsonProperty("payment_amount")
	private double paymentAmount;
	
	@JsonProperty("curr")
	private String curr;
	
	@JsonProperty("created_at")
	private String createdAt;
	
	public LuluPaymentRequest() {
		this.transactionId = UUID.randomUUID().toString();
		this.createdAt = new Date().toString();
	}

	public String getTransactionId() {
		return transactionId;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public double getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(double paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	public String getCurr() {
		return curr;
	}

	public void setCurr(String curr) {
		this.curr = curr;
	}	
	
	public String getCreatedAt() {
		return createdAt;
	}
}
