package com.motor.insurance.minsure.bean;

/**
 * The Vehicle class is the model and business implementation for vehicle
 * details.
 *
 * @author SasiRegha
 * @version 1.0
 * @since 01-12-2017
 */
public class Vehicle {

	public Vehicle() {
	}

	private String carColor;
	private String regNumber;
	private byte numWheels;

	/**
	 * @return the carColor
	 */
	public String getCarColor() {
		return carColor;
	}

	/**
	 * @param carColor
	 *            the carColor to set
	 */
	public void setCarColor(String carColor) {
		this.carColor = carColor;
	}

	/**
	 * @return the regNumber
	 */
	public String getRegNumber() {
		return regNumber;
	}

	/**
	 * @param regNumber
	 *            the regNumber to set
	 */
	public void setRegNumber(String regNumber) {
		this.regNumber = regNumber;
	}

	/**
	 * @return the numWheels
	 */
	public byte getNumWheels() {
		return numWheels;
	}

	/**
	 * @param numWheels
	 *            the numWheels to set
	 */
	public void setNumWheels(byte numWheels) {
		this.numWheels = numWheels;
	}

}
