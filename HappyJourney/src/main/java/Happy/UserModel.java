package Happy;



public class UserModel {
private String name;
private String psd;
private String cpsd;

public String getCpsd() {
	return cpsd;
}
public void setCpsd(String cpsd) {
	this.cpsd = cpsd;
}
public UserModel()
{
	
}
public UserModel(String name, String psd,String cpsd) {
	super();
	this.name = name;
	this.psd = psd;
	this.cpsd=cpsd;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPsd() {
	return psd;
}
public void setPsd(String psd) {
	this.psd = psd;
}
@Override
public String toString() {
	return "UserModel [name=" + name + ", psd=" + psd + "]";
}
}
