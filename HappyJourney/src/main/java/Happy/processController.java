package Happy;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class processController {
	
	@Autowired
	Dao rgDAO;
	
	@RequestMapping(value = "/CustomerMainPage", method = RequestMethod.POST)
	  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			  @ModelAttribute("login") UserModel login) {
	  
		  ModelAndView mav = null;
		  
		  //invoke DAO method to validate the user credentials
	      int ls = rgDAO.loginUser(login);
	      
	      //navigating based on the result
	      if (ls==0) {   //successful login
	    	  mav = new ModelAndView("CustomerMainPage");
	    	  mav.addObject("firstname", login.getName());
	      } else if (ls==1) {	//login failure with wrong pwd
	    	  mav = new ModelAndView("MainLogin");
	    	  mav.addObject("message", "Password is wrong!!");
	      } else if (ls==2) {		//login failure with wrong user
	    	  mav = new ModelAndView("MainLogin");
	    	  mav.addObject("message", "Username is wrong!!");
	      }
	      return mav;
	  }
	
	
	@RequestMapping(value = "/AdminMainPage", method = RequestMethod.POST)
	  public ModelAndView adminloginprocess(HttpServletRequest request, HttpServletResponse response,
			  @ModelAttribute("alogin") UserModel login) {
	  
		  ModelAndView mav = null;
		  
		  //invoke DAO method to validate the user credentials
	      int ls = rgDAO.loginadmin(login);
	      
	      //navigating based on the result
	      if (ls==0) {   //successful login
	    	  mav = new ModelAndView("AdminMainPage");
	    	  mav.addObject("firstname", login.getName());
	      } else if (ls==1) {	//login failure with wrong pwd
	    	  mav = new ModelAndView("AdminLogin");
	    	  mav.addObject("message", "Password is wrong!!");
	      } else if (ls==2) {		//login failure with wrong user
	    	  mav = new ModelAndView("AdminLogin");
	    	  mav.addObject("message", "Username is wrong!!");
	      }
	      return mav;
	  }
	
	
	/* @RequestMapping(value="/registerProcess", method=RequestMethod.POST)
	  public ModelAndView addUser(@ModelAttribute("reg") UserModel u) {
		  
		  //invoke DAO class
		  int status=rgDAO.registerUser(u);

		  return new ModelAndView("AdminMainPage");
	  }*/
}
