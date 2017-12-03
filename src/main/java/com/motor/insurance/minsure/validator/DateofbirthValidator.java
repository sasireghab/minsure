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
 * The DateofbirthValidator class is the validator class for validating customer
 * date of birth format
 *
 * @author SasiRegha
 * @version 1.0
 * @since 01-12-2017
 */
public class DateofbirthValidator implements Validator {

	final static Logger logger = Logger.getLogger(DateofbirthValidator.class);

	private static final String DOB_PATTERN = "^(?:(0[1-9]|1\\d|2\\d|3[01])(/)(0[1-9]|1[0-2])(/)(19|20)\\d{2})";

	private Pattern pattern;
	private Matcher matcher;

	public DateofbirthValidator() {
		pattern = Pattern.compile(DOB_PATTERN);
	}

	/**
	 * This method is used to validate the format of the customer date of birth
	 * (DD/MM/YYYY)
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
		logger.info("validate method - DateofbirthValidator");
		matcher = pattern.matcher(value.toString());
		if (!matcher.matches()) {
			FacesMessage msg = new FacesMessage("Date of birth validation failed.", "Invalid dataofbirth");
			msg.setSeverity(FacesMessage.SEVERITY_ERROR);
			throw new ValidatorException(msg);
		}
	}

}
