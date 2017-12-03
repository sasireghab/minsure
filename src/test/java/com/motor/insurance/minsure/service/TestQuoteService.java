package com.motor.insurance.minsure.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

/**
 * The TestQuoteService class is the test class for QuoteService
 *
 * @author SasiRegha
 * @version 1.0
 * @since 01-12-2017
 */
public class TestQuoteService {

	/**
	 * This method is used to test the calculateQuotePrice method
	 * 
	 */
	@Test
	public void testCalculateQuotePrice() {
		QuoteService quoteService = new QuoteService();
		int calprice = quoteService.calculateQuotePrice(2000, 5);
		assertTrue(calprice > 0);
		assertEquals(10000, calprice);
	}

}
