package com.motor.insurance.minsure.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

import org.apache.log4j.Logger;

/**
 * The RegNumberValidator class is the validator class for validating vehicle
 * registration number
 *
 * @author SasiRegha
 * @version 1.0
 * @since 01-12-2017
 */
public class RegNumberValidator implements Validator {

	final static Logger logger = Logger.getLogger(RegNumberValidator.class);

	private static final String REGNUMBER_PATTERN = "^[A-Za-z]{1,2}[0-9]{1,2}[A-Za-z]{1,3}$";

	private Pattern pattern;
	private Matcher matcher;

	public RegNumberValidator() {
		pattern = Pattern.compile(REGNUMBER_PATTERN);
	}

	/**
	 * This method is used to validate the format of the vehicle registration number
	 * (AB12CDE)
	 * 
	 * @param context
	 *            The FacesContext
	 * @param component
	 *            The UIComponent
	 * @param value
	 *            The input value
	 * 
	 * @throw ValidatorException On invalid format
	 */
	public void validate(FacesContext context, UIComponent component, Object value) throws ValidatorException {
		logger.info("validate method - RegNumberValidator");
		matcher = pattern.matcher(value.toString());
		if (!matcher.matches()) {
			FacesMessage msg = new FacesMessage("Vehicle Registration Number validation failed.",
					"Invalid registration number.");
			msg.setSeverity(FacesMessage.SEVERITY_ERROR);
			throw new ValidatorException(msg);
		}
	}

}
