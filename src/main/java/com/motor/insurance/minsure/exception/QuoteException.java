package com.motor.insurance.minsure.exception;

/**
 * The QuoteException class is the exception class for Quote calculation
 *
 * @author SasiRegha
 * @version 1.0
 * @since 01-12-2017
 */
public class QuoteException extends Exception {

	private String message;

	public QuoteException() {

	}

	public QuoteException(String message) {
		super(message);
	}

	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message
	 *            the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}

}
