package buyer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
 
public class BuyerAction extends Action {
 
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
     
        String target = "errorPage";
        BuyerForm bForm = (BuyerForm)form;
        HttpSession session = request.getSession();
        String action= request.getParameter("action");
        if(action !=null & action.equals("addpotentialbuyers"))
        {
            try
        	{
        	BuyerDB db = new BuyerDB();
        	int row= db.addBuyer(bForm);
        	if(row == 1)
        		request.setAttribute("message", "Thanks for your details. We will get back to you within 24 hours.");
        	else
        		request.setAttribute("message", "Error Occurred. Could not be added. Please contact Administrator.");
        	bForm = null;
        	bForm = new BuyerForm();
        	session.setAttribute("buyerForm", bForm);
        	target="success";
        	}
        	catch(Exception ex)
        	{
        		System.out.println(ex);
        	}
        	
        }
        	
        return mapping.findForward(target);
    }
}