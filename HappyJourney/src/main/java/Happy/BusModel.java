package Happy;

import java.util.Date;
import java.util.List;

public class BusModel {
	private String bustype;
	private String bustypeId;
	private int busid;
	private String regno;
	private String fstation;
	private String tstation;
	private int tripid;
	private String fstanid;
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	private String tstanid;
	private Date bdate;

	
	public String getFstanid() {
		return fstanid;
	}
	public void setFstanid(String fstanid) {
		this.fstanid = fstanid;
	}
	public String getTstanid() {
		return tstanid;
	}
	public void setTstanid(String tstanid) {
		this.tstanid = tstanid;
	}
	private List<BusModel> BList;
	private List<BusModel> SList;
	private List<BusModel> RList;
	
	public List<BusModel> getRList() {
		return RList;
	}
	public void setRList(List<BusModel> rList) {
		RList = rList;
	}
	public List<BusModel> getSList() {
		return SList;
	}
	public void setSList(List<BusModel> sList) {
		SList = sList;
	}
	public List<BusModel> getBList() {
		return BList;
	}
	public void setBList(List<BusModel> bList) {
		BList = bList;
	}
	public BusModel()
	{
		
	}
	
	public String getBustype() {
		return bustype;
	}
	public void setBustype(String bustype) {
		this.bustype = bustype;
	}
	public String getBustypeId() {
		return bustypeId;
	}
	public void setBustypeId(String bustypeId) {
		this.bustypeId = bustypeId;
	}
	public int getBusid() {
		return busid;
	}
	public void setBusid(int busid) {
		this.busid = busid;
	}
	public String getRegno() {
		return regno;
	}
	public void setRegno(String regno) {
		this.regno = regno;
	}
	public String getFstation() {
		return fstation;
	}
	public void setFstation(String fstation) {
		this.fstation = fstation;
	}
	public String getTstation() {
		return tstation;
	}
	public void setTstation(String tstation) {
		this.tstation = tstation;
	}
	public int getTripid() {
		return tripid;
	}
	public void setTripid(int tripid) {
		this.tripid = tripid;
	}
	

	
}
