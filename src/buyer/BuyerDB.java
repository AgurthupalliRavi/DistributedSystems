package buyer;

import com.mysql.*;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.*;
import javax.servlet.http.HttpServletRequest;

public class BuyerDB {

	private Connection connect = null;
	private PreparedStatement preparedStatement = null;
	  
	public int addBuyer(BuyerForm bForm) throws Exception
	{
		int rows=0;
		try
		{
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");
			// Setup the connection with the DB
			connect = DriverManager
	          .getConnection("jdbc:mysql://localhost:3306/mydb","toyota","toyota");
			preparedStatement = connect.prepareStatement("SELECT MAX(BUYERNO) MAXNO FROM POTENTIAL_BUYER");
			int count=0;
			ResultSet rs = preparedStatement.executeQuery();
			while(rs.next())
				count =rs.getInt("MAXNO");
			preparedStatement = connect.prepareStatement("INSERT INTO POTENTIAL_BUYER(BUYERNO,NAME,ADDRESS,PHONE,EMAIL) VALUES(?,?,?,?,?)");
			preparedStatement.setInt(1,count+1);
			preparedStatement.setString(2,bForm.getBuyerName());
	        preparedStatement.setString(3,bForm.getBuyerAddress());
	        preparedStatement.setString(4,bForm.getBuyerPhone());
	        preparedStatement.setString(5,bForm.getBuyerEmail());
			rows = preparedStatement.executeUpdate();
	    }
		catch(Exception ex)
		{
			throw ex;
		}
	    finally
	    {
	    	connect.close();
	    }
		return rows;
	}
}