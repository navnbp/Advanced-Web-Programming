package cs520.web.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import cs520.model.User;

@Component
public class UserValidator implements Validator{


	
	@Override
	public boolean supports(Class<?> clazz) {
		
		return User.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		User user=(User) target;
		String emailPattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"  
				   + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";  
		Pattern pattern;  
		Matcher matcher; 
		
		
		  if (!(user.getEmailId() != null && user.getEmailId().isEmpty())) {  
			   pattern = Pattern.compile(emailPattern);  
			   matcher = pattern.matcher(user.getEmailId());  
			   if (!matcher.matches()) 
			   {  
				   errors.rejectValue("emailId", "Please enter correct email address");  
			   }  
			  }  
	}

}
