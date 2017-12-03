package com.motor.insurance.minsure.service;

import org.apache.log4j.Logger;

/**
 * The QuoteService class is the service class for implementing the quote price
 * calculation
 *
 * @author SasiRegha
 * @version 1.0
 * @since 01-12-2017
 */
public class QuoteService {

	final static Logger logger = Logger.getLogger(QuoteService.class);

	public QuoteService() {
	}

	/**
	 * This method is used to calculate the quote price of the given vehicle
	 * 
	 * @param birthYear
	 *            The birth year of the customer
	 * @param totalWheels
	 *            The total number of wheels of the given vehicle
	 * 
	 * @return int This returns the calculated quote price
	 */
	public int calculateQuotePrice(int birthYear, int totalWheels) {
		logger.info("calculateQuotePrice method - QuoteService");
		int price = birthYear * totalWheels;
		logger.info("CalculateQuotePrice ::: " + price);
		return price;
	}

}
