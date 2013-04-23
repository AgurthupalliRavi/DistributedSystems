package login;

import com.mysql.*;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.*;
import javax.servlet.http.HttpServletRequest;

public class LoginDB {

	final String dealer1Connection = "jdbc:mysql://localhost:3306/dealer1";
	final String dealer2Connection = "jdbc:mysql://localhost:3306/dealer2";
	final String masterConnection = "jdbc:mysql://localhost:3306/mydb";
	private Connection connect = null;
	private PreparedStatement preparedStatement = null;
	  
	public ArrayList<ModelForm> getModels() throws Exception
	{
		ArrayList<ModelForm> aForm = new ArrayList<ModelForm>();
	    try
		{
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");
			// Setup the connection with the DB
			connect = DriverManager
	          .getConnection(masterConnection ,"toyota","toyota");
			preparedStatement = connect.prepareStatement("SELECT M.MODEL_NAME,M.MODEL_NUM,M.PRICE,MT.TYPE,M.MILEAGE,M.SEAT,M.CAPACITY FROM MODEL M,MODELTYPE MT WHERE M.TYPE=MT.TYPENO");
	        ResultSet set = preparedStatement.executeQuery();
	        while(set.next())
	        {
	        	ModelForm form = new ModelForm();
	        	form.setModelName(set.getString("MODEL_NAME"));
	        	form.setModelNo(set.getInt("MODEL_NUM"));
	        	form.setPrice(set.getDouble("PRICE"));
	        	form.setType(set.getString("TYPE"));
	        	form.setMileage(set.getInt("MILEAGE"));
	        	form.setSeat(set.getInt("SEAT"));
	        	form.setCapacity(set.getFloat("CAPACITY"));
	        	aForm.add(form);
	        }
		}
		catch(Exception ex)
		{
			throw ex;
		}
	    finally
	    {
	    	connect.close();
	    }
		return aForm;
	}
	
	
	public LoginForm validateUser(LoginForm uForm) throws Exception
	{
		try
		{
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");
			// Setup the connection with the DB
			connect = DriverManager
	          .getConnection(dealer1Connection,"toyota","toyota");
			preparedStatement = connect.prepareStatement("SELECT CUSTOMER_NO,NAME,PASSWORD, 'CUST' USR FROM CUSTOMER WHERE CUSTOMER_NO= "+Integer.parseInt(uForm.getUserName()) +
														 "AND PASSWORD='"+ uForm.getPassword() +"' UNION"+
														 "SELECT EMP_NO,NAME,PASSWORD,'REP' USR FROM REPRESENTATIVE WHERE EMP_NO="+ Integer.parseInt(uForm.getUserName()) +" AND PASSWORD= '"+uForm.getPassword() +"'");
	        ResultSet set = preparedStatement.executeQuery();
	        if(set.next())
	        {
	        	uForm.setDealerNo("dealer1");
	        	uForm.setUserStatus(set.getString("USR"));
	        	return uForm;
	        }
	    }
		catch(Exception ex)
		{
			throw ex;
		}
	    finally
	    {
	    	connect.close();
	    }
		
		try
		{
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");
			// Setup the connection with the DB
			connect = DriverManager
	          .getConnection(dealer2Connection,"toyota","toyota");
			preparedStatement = connect.prepareStatement("SELECT CUSTOMER_NO,NAME,PASSWORD, 'CUST' USR FROM CUSTOMER WHERE CUSTOMER_NO= "+Integer.parseInt(uForm.getUserName()) +
														 "AND PASSWORD='"+ uForm.getPassword() +"' UNION"+
														 "SELECT EMP_NO,NAME,PASSWORD,'REP' USR FROM REPRESENTATIVE WHERE EMP_NO="+ Integer.parseInt(uForm.getUserName()) +" AND PASSWORD= '"+uForm.getPassword() +"'");
	        ResultSet set = preparedStatement.executeQuery();
	        if(set.next())
	        {
	        	uForm.setDealerNo("dealer2");
	        	uForm.setUserStatus(set.getString("USR"));
	        	return uForm;
	        }
	    }
		catch(Exception ex)
		{
			throw ex;
		}
	    finally
	    {
	    	connect.close();
	    }
		return uForm;
	}
}