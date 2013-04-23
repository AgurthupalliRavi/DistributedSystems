package login;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
 
@SuppressWarnings("serial")
public class LoginForm extends ActionForm {
 
    private String userName;
    private String password;
    private String dealerNo;
    private String userStatus;
    
    
    public String getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}
	public String getDealerNo() {
		return dealerNo;
	}
	public void setDealerNo(String dealerNo) {
		this.dealerNo = dealerNo;
	}
	public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

	private ArrayList<ModelForm> modelsList;

    public ArrayList<ModelForm> getModelsList() {
		return modelsList;
	}
	
	public void setModelsList(ArrayList<ModelForm> modelsList) {
		this.modelsList = modelsList;
	}

    
    
}
