package connection;

public class dbConnection {
	
	public java.sql.Connection conn;
	public java.sql.Statement stmt;
	public java.sql.ResultSet rs;
	
	/* 생성자 */
	public dbConnection(){
		connect();
	}
	
	public void connect() {
		String dbInfo = "jdbc:mysql://localhost:3306/entMojuk?characterEncoding=UTF-8&serverTimezone=UTC";
		String dbID = "root";
		String dbPW = "chaminjae";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			this.conn = java.sql.DriverManager.getConnection(dbInfo, dbID, dbPW);
			this.stmt = this.conn.createStatement();
		}
		catch(Exception e)
		{
			System.out.println("Connection error: " + e);
		}
	}
	
	
	/* Update Method */
	public void update(String dbCommand) {
		try {
			this.stmt.executeUpdate(dbCommand);
		}
		catch(Exception e)
		{
			System.out.println("Update error: " + e);
		}
	}
	
	/* Select Method */
	public void select(String dbSelect) {
		try {
			this.rs = this.stmt.executeQuery(dbSelect);
		}
		catch(Exception e)
		{
			System.out.println("Select error: " + e);
		}
	}
	
	/* close conn */
	public void close() {
		try {
			conn.close();
		}
		catch(Exception e){
			System.out.println("Close error: " + e);
		}
	}

}
