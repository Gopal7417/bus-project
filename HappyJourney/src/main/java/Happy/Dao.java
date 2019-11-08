package Happy;

import java.util.List;


public interface Dao {

	public int registerUser(UserModel um);
	public int loginUser(UserModel u);
	public int loginadmin(UserModel u);
	public List<BusModel> getBustypes();
	public List<BusModel> getStation();
	public List<BusModel> getRegnos();
}
