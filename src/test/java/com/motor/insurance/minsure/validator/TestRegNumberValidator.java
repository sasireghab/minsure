package com.motor.insurance.minsure.validator;

import javax.faces.context.FacesContext;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

import org.junit.Test;

/**
 * The TestQuoteService class is the test class for RegNumberValidator
 *
 * @author SasiRegha
 * @version 1.0
 * @since 01-12-2017
 */
public class TestRegNumberValidator {

	/**
	 * This method is used to test the validate method
	 * 
	 */
	@Test(expected = ValidatorException.class)
	public void testValidatorException() throws Exception {
		Validator validator = new RegNumberValidator();
		FacesContext context = FacesContext.getCurrentInstance();
		validator.validate(context, null, "HG04");
	}

}
