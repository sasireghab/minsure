package com.motor.insurance.minsure.bean;

import org.apache.log4j.Logger;

import com.motor.insurance.minsure.exception.QuoteException;
import com.motor.insurance.minsure.service.QuoteService;

/**
 * The Quote class is the model and business implementation for motor quote
 * details. It also holds the customer and vehicle details
 *
 * @author SasiRegha
 * @version 1.0
 * @since 01-12-2017
 */
public class Quote {

	final static Logger logger = Logger.getLogger(Quote.class);

	public Quote() {
	}

	private Customer customer;

	private Vehicle vehicle;

	private int price;

	private boolean closePage;

	/**
	 * @return the customer
	 */
	public Customer getCustomer() {
		return customer;
	}

	/**
	 * @param customer
	 *            the customer to set
	 */
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	/**
	 * @return the vehicle
	 */
	public Vehicle getVehicle() {
		return vehicle;
	}

	/**
	 * @param vehicle
	 *            the vehicle to set
	 */
	public void setVehicle(Vehicle vehicle) {
		this.vehicle = vehicle;
	}

	/**
	 * This method is used to calculate the quote price from date of year of the
	 * customer and the number of wheels of the vehicle
	 * 
	 * @return the price
	 * @throws QuoteException
	 */
	public int getPrice() throws QuoteException {
		QuoteService quoteService = new QuoteService();

		if (customer != null && customer.getDateOfBirth() != null && vehicle != null && vehicle.getNumWheels() > 0) {
			int birthYear = Integer.parseInt(customer.getDateOfBirth().substring(6, 10));
			int totalWheels = vehicle.getNumWheels();
			return quoteService.calculateQuotePrice(birthYear, totalWheels);
		} else {
			logger.error("Customer or Vehicle object is empty");
			throw new QuoteException("System cannot provide quote price. Please contact administrator");
		}

	}

	/**
	 * @param price
	 *            the price to set
	 */
	public void setPrice(int price) {
		this.price = price;
	}

	/**
	 * @return the closePage
	 */
	public boolean isClosePage() {
		return closePage;
	}

	/**
	 * @param closePage
	 *            the closePage to set
	 */
	public void setClosePage(boolean closePage) {
		this.closePage = closePage;
	}

}
