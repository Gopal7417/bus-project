package Happy;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;


public class DaoImpl implements Dao {
JdbcTemplate template;
	

	public void setTemplate(JdbcTemplate t) {
		template=t;
	}
	public JdbcTemplate getTemplate() {
		return template;
	}
	
	//Method to register the user in database
	public int registerUser(UserModel user){
		
		//prepare the insert statement
	    String qry = "insert into bususer values(?,?)";

	    //execute the DML statement
	    int st=template.update(qry, new Object[] { user.getName(), user.getPsd() });
	    
		return st;
	}
	
	public int loginUser(UserModel u)
	{
String qry = "select pswd from bususer where userid=?";
		
		try {
		String pwd = (String)template.queryForObject(qry,new Object[]{u.getName()}, String.class );
		
		//verify the password
		if (pwd != null) {
			if (u.getPsd().equals(pwd)) {
				return 0;	//success
			}else {
				return 1;	//wrong password
			}
		}else {
			return 2;
		}
		
		}catch(Exception ex) {
			return 2;	//user itself wrong
		}
		
	}

	public int loginadmin(UserModel u)
	{
String qry = "select password from admindetails where userid=?";
		
		try {
		String pwd = (String)template.queryForObject(qry,new Object[]{u.getName()}, String.class );
		
		//verify the password
		if (pwd != null) {
			if (u.getPsd().equals(pwd)) {
				return 0;	//success
			}else {
				return 1;	//wrong password
			}
		}else {
			return 2;
		}
		
		}catch(Exception ex) {
			return 2;	//user itself wrong
		}
		
	}
	
	
	public List<BusModel> getBustypes()
	{
		 String SQL = "select * from bustypes";
		    List <BusModel> buses = template.query(SQL,new ResultSetExtractor<List<BusModel>>(){
		       
		       public List<BusModel> extractData( ResultSet rs) throws SQLException, DataAccessException {
		         
		          
		          List<BusModel> ulist = new ArrayList<BusModel>();  
		          while(rs.next()){  
		        	  BusModel b = new BusModel();
		            b.setBustypeId(rs.getString("BSTY_ID"));
		             b.setBustype(rs.getString("BSTY_TITLE"));
		            ulist.add(b);
		             
		          }  
		          return ulist;  
		       }    	  
		    });
		    return buses;
	}
	
	public List<BusModel> getStation()
	{
		 String SQL = "select stan_name,stan_id from stations";
		 List<BusModel> buses = template.query(SQL,new ResultSetExtractor<List<BusModel>>(){
		       
		       public List<BusModel> extractData( ResultSet rs) throws SQLException, DataAccessException {
		         
		          
		    	   List<BusModel> ulist = new ArrayList<BusModel>();  
		          while(rs.next()){  
		        	  BusModel b = new BusModel();
		           //b.setBustypeId(rs.getString(1));
		        	  b.setFstanid(rs.getString("stan_id"));
			            b. setTstanid(rs.getString("stan_id"));
		            b.setFstation(rs.getString("STAN_NAME"));
		            b.setTstation(rs.getString("STAN_NAME"));
		           // System.out.println(b);
		        	  
		             ulist.add(b);  
		          }  
		          return ulist;  
		       }    	  
		    });
		    return buses;
	}
	public List<BusModel> getRegnos()
	{
		 String SQL = "select * from buses";
		 List<BusModel> buses = template.query(SQL,new ResultSetExtractor<List<BusModel>>(){
		       
		       public List<BusModel> extractData( ResultSet rs) throws SQLException, DataAccessException {
		         
		          
		    	   List<BusModel> ulist = new ArrayList<BusModel>();  
		          while(rs.next()){  
		        	  BusModel b = new BusModel();
		           //b.setBustypeId(rs.getString(1));
		        	  
		            b.setRegno(rs.getString("BUS_REGNO"));
		           
		           // System.out.println(b);
		        	  
		             ulist.add(b);  
		          }  
		          return ulist;  
		       }    	  
		    });
		    return buses;
	}
	
	
	public JSONArray names() {
		String sql = "select bus_regno,stan_time,bsty_title,bsty_desc,trips_id from bustypes me,\r\n" + 
				" (select bus_bsty_id,stan_time,trips_id,bus_regno from\r\n" + 
				" (select stan_time,trip_bus_ID,trips_id from\r\n" + 
				" ( select a.trips_id,stan_time from (select trips_id,stan_time from tripstations where STAN_ID='VSKP') a,\r\n" + 
				" (select trips_id from tripstations where STAN_ID ='HYD') b where a.trips_id=b.trips_id ) ab ,\r\n" + 
				" (select trip_id,trip_bus_id from trips where trip_date=to_date('10-9-19')) p where p.trip_id=ab.trips_id ) bd ,\r\n" + 
				" ( select bus_id,bus_bsty_id,bus_regno from buses) where bus_id= trip_bus_id)la  where la.bus_bsty_id=me.bsty_id";
		JSONArray buses = template.query(sql,new ResultSetExtractor<JSONArray>(){
	         
	         public JSONArray extractData(ResultSet rs) throws SQLException, DataAccessException {
	        	 JSONArray json = new JSONArray();
	             ResultSetMetaData metadata = rs.getMetaData();
	             int numColumns = metadata.getColumnCount();
	             while(rs.next())             //iterate rows
	             {
	                 JSONObject obj = new JSONObject();      //extends HashMap
	                 for (int i = 1; i <=numColumns; ++i)           //iterate columns
	                 {
	                     String column_name = metadata.getColumnName(i);
	                     obj.put(column_name, rs.getString(column_name));
	                 }
	                 json.add(obj);
	                

	             }
	             return json;
	   }

});
	
		
return buses;
	}

	
	
	
}
