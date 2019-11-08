package Happy;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {


	@Autowired
	Dao rgDAO;
	
	@RequestMapping(value = "/CreateTrip", method = RequestMethod.GET)
	  public ModelAndView createtrip(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("CreateTrip");
	    BusModel b=new BusModel();
	  
	 List<BusModel> blist=rgDAO.getBustypes();
	    List<BusModel> Slist=rgDAO.getStation();
	  b.setBList(blist);
	   b.setSList(Slist);
	    
	    mav.addObject("Trip",b);

	    return mav;
	  }
	@RequestMapping(value = "/BUSWISE1", method = RequestMethod.GET)
	  public ModelAndView buswise(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("BUSWISE1");
	    BusModel b=new BusModel();
		  
		 List<BusModel> blist=rgDAO.getRegnos();
	   
		 b.setRList(blist);
	   
	    
	    mav.addObject("Trip",b);

	    return mav;
	  }
	  @RequestMapping(value = "/TripWise", method = RequestMethod.GET)
	  public ModelAndView tripwise(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("TripWise");
	    BusModel b=new BusModel();
		  
	    List<BusModel> Slist=rgDAO.getStation();
		
		   b.setSList(Slist);
		    
		    mav.addObject("Trip",b);

		    return mav;
		  }
	
	  @RequestMapping(value = "/CustomerMainPage", method = RequestMethod.GET)
	  public ModelAndView createtrp(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("CustomerMainPage");
	    BusModel b=new BusModel();
	  
	
	    List<BusModel> Slist=rgDAO.getStation();
	 
	   b.setSList(Slist);
	    
	    mav.addObject("Trip",b);

	    return mav;
	  }

	  @RequestMapping(value = "/some")
	  @ResponseBody
	  public void helloWorld1(HttpServletRequest request,HttpServletResponse response) throws IOException  {  
		  String tt=request.getParameter("b"); 
		  System.out.println(tt);
		  
		    JSONArray jsonArray = rgDAO.bustypes(tt); 
		    response.getWriter().println(jsonArray);

	  }
}
