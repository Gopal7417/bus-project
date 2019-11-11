package Happy;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class BusController {

	@Autowired
	Dao rgDAO;
	

	  @RequestMapping(value = "/register", method = RequestMethod.GET)
	  public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("register");
	    UserModel um=new UserModel();
	    
	    mav.addObject("reg", um);
	    return mav;
	  }
	  @RequestMapping(value="/registerProcess", method=RequestMethod.POST)
	  public ModelAndView addUser(@ModelAttribute("reg") UserModel u) {
		  
		  //invoke DAO class
		  int status=rgDAO.registerUser(u);

		  return new ModelAndView("AdminMainPage");
	  }
	 
	  @RequestMapping(value = "/book", method = RequestMethod.GET)
	  public ModelAndView busbook(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("book");
	 
	    return mav;
	  }
	  @RequestMapping(value = "/Booking", method = RequestMethod.GET)
	  public ModelAndView bus(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("Booking");
	    return mav;
	  }
	
	  @RequestMapping(value = "/CustomerChangePswd", method = RequestMethod.GET)
	  public ModelAndView changepsd(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("CustomerChangePswd");
	    return mav;
	  }
	 /* @RequestMapping(value = "/CustomerMainPage", method = RequestMethod.GET)
	  public ModelAndView cmainpage(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("CustomerMainPage");
	    return mav;
	  }*/
	  
	  @RequestMapping(value = "/upcoming", method = RequestMethod.GET)
	  public ModelAndView upcoming(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("upcoming");
	    return mav;
	  }
	  @RequestMapping(value = "/CompletedTrips", method = RequestMethod.GET)
	  public ModelAndView completed(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("CompletedTrips");
	    return mav;
	  }
	  
	  @RequestMapping(value = "/AdminLogin", method = RequestMethod.GET)
	  public ModelAndView adminlogin() {
		  
	    ModelAndView mav = new ModelAndView("AdminLogin");
	    UserModel um=new UserModel();
	    mav.addObject("alogin", um);
	    return mav;
	  }
	  
	  @RequestMapping(value = "/MainLogin", method = RequestMethod.GET)
	  public ModelAndView userLogin(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("MainLogin");
	    UserModel u=new UserModel();
	    mav.addObject("login", u);
	    return mav;
	  }
	  
	  @RequestMapping(value = "/AdminMainPage", method = RequestMethod.GET)
	  public ModelAndView adminpage(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("AdminMainPage");
	    return mav;
	  }
	  
	  @RequestMapping(value = "/AdminChangePswd", method = RequestMethod.GET)
	  public ModelAndView adminchangepsd(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("AdminChangePswd");
	    return mav;
	  }
	
	  @RequestMapping(value = "/BookingsDateWise", method = RequestMethod.GET)
	  public ModelAndView datewise(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("BookingsDateWise");
	    return mav;
	  }
	  
	  
	  @RequestMapping(value = "/ViewTrips", method = RequestMethod.GET)
	  public ModelAndView viewtrip(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("ViewTrips");
	   
	    return mav;
	  }
	  
	  @RequestMapping(value = "/Chart", method = RequestMethod.GET)
	  public ModelAndView tripchart(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("Chart");
	    return mav;
	  }
	  
	  @RequestMapping(value = "/cancelTrip", method = RequestMethod.GET)
	  public ModelAndView cancel(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("canceltrip");
	    return mav;
	  }
	  
	
}
