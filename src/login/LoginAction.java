package login;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import buyer.*;
 
public class LoginAction extends Action {
 
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
     
        String target = "errorPage";
        LoginForm loginForm = (LoginForm)form;
        HttpSession session = request.getSession();
        String action= request.getParameter("action");
        LoginDB db = new LoginDB();
        if(action !=null & action.equals("userLogin"))
        {
            if(loginForm.getUserName().equals("webmaster") && loginForm.getPassword().equals("toyota") ||
	        		loginForm.getUserName().equals("dealer1") && loginForm.getPassword().equals("toyota")
	                || loginForm.getUserName().equals("dealer2") && loginForm.getPassword().equals("toyota")) {
	        	
	        	session.setAttribute("UN", loginForm.getUserName());
	        	if(loginForm.getUserName().equals("dealer1"))
	        	{
	        		loginForm.setDealerNo("dealer1");
	        		session.setAttribute("SHOWDATA", "dealer1");
	        	}
	        	if(loginForm.getUserName().equals("dealer2"))
	        	{
	        		loginForm.setDealerNo("dealer2");
	        		session.setAttribute("SHOWDATA", "dealer2");
	        	}
	            target = "success";
	            request.setAttribute("message", session.getAttribute("UN"));
	        }
	        else if(loginForm.getUserName() !="" && loginForm.getPassword() !="") 
	        {
	        	session.setAttribute("UN", loginForm.getUserName());
	        	loginForm = db.validateUser(loginForm);
	        	if(loginForm.getUserStatus() != "")
	        	{
		        	target = "success";
		        	session.setAttribute("USRSTATUS", loginForm.getUserStatus());
		            request.setAttribute("message", session.getAttribute("UN"));
	        	}
	        	else
		        {
		            target = "failure";
		            request.setAttribute("message", "Please check the credentials entered.");
		        }
	        }
        }
        if(action !=null & action.equals("logoutSession"))
        {
        	session.invalidate();
        	RequestDispatcher disp = request.getRequestDispatcher("index.jsp");
        	disp.forward(request, response);
        }
        else if(action !=null & action.equals("showModels"))
        {
    		try
        	{
        	loginForm.setModelsList(db.getModels());
        	session.setAttribute("modelsList", loginForm.getModelsList());
        	session.setAttribute("loginForm", loginForm);
        	target="showModels";
        	}
        	catch(Exception ex)
        	{
        		System.out.println(ex);
        	}
        	
        }
        else if(action !=null & action.equalsIgnoreCase("showbuyerForm"))
        {
        	BuyerForm buyerForm = new BuyerForm();
        	session.setAttribute("buyerForm", buyerForm);
        	target="showPotentialBuyerForm";
        }
        return mapping.findForward(target);
    }
}