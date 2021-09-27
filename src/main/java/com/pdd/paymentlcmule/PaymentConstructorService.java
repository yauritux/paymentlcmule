package com.pdd.paymentlcmule;

import com.pdd.paymentlcmule.model.LuluPaymentRequest;

public class PaymentConstructorService {
	
	
	public LuluPaymentRequest getLuluPaymentRequestModel(String customerId, double paymentAmount, String curr) {
		LuluPaymentRequest paymentRequest = new LuluPaymentRequest();
		paymentRequest.setCustomerId(customerId);
		paymentRequest.setPaymentAmount(paymentAmount);
		paymentRequest.setCurr(curr);		
		return paymentRequest;
	}
}
