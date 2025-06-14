package vote;

import java.sql.*;
import java.util.*;
import java.io.*;
import java.net.*;

public class VoteDB {
    String driver;
    String url;
    Properties props;
    Connection conn;
    String status;
    String cpath;
    
    public boolean init(String sp) {
	try {
	    cpath = sp;
    	    props = new Properties();
	    //props.load(new FileInputStream(sp));
	  //  driver = "driver","")
	    Class.forName("com.mysql.jdbc.Driver");
    	    //url = ;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voteuser","root","root");
	    status = "Connected";
	    return true;
	} catch(Exception e) {
	    conn = null;
	    status = "Exception";
	    e.printStackTrace();
	}
	return false;
    }
	
    public Connection getConnection() { return conn; }
    public String getDriver() { return driver; }
    public String getUrl() { return url; }
    public Properties getProperties() { return props; }
    public String getStatus() { return status; }
    
    public void setConnection(Connection value) { conn = value; }
    public void setDriver(String value) { driver = value; }
    public void setUrl(String value) { url = value; }
    public void setUser(String value) { props.setProperty("user",value); }
    public void setPassword(String value) { props.setProperty("password",value); }
    
}