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
        if(action !=null & action.equals("userLogin"))
        {
            if(loginForm.getUserName().equals("webmaster") && loginForm.getPassword().equals("toyota") ||
	        		loginForm.getUserName().equals("dealer1") && loginForm.getPassword().equals("toyota")
	                || loginForm.getUserName().equals("dealer2") && loginForm.getPassword().equals("toyota")) {
	        	
	        	session.setAttribute("UN", loginForm.getUserName());
	            target = "success";
	            request.setAttribute("message", session.getAttribute("UN"));
	        }
	        else {
	            target = "failure";
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
        	LoginDB db = new LoginDB();
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