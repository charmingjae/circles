package connection;



public class dbConnection {
	
	public java.sql.Connection conn;
	public java.sql.PreparedStatement pstmt;
	public java.sql.Statement stmt;
	public java.sql.ResultSet rs;
	
	/* 생성자 */
	public dbConnection(){
		connect();
	}
	
	public void connect() {
		String dbInfo = "jdbc:mysql://13.209.103.253:3306/entMojuk?characterEncoding=UTF-8&serverTimezone=UTC";
		String dbID = "gomojuk";
		String dbPW = "Jumpman23!";
		
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
	
	/* Insert Method */
	public void insert(String dbInsert) {
		try {
			this.stmt.executeUpdate(dbInsert);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
	/* Update Method */
	public void update(String dbCommand) {
		try {
			this.stmt.executeUpdate(dbCommand);
			System.out.println("Insert 성공!");
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
