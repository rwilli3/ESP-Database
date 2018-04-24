/**
 * Created by kyleharris on 9/5/17.
 */
import java.sql.*;

/**
 * This class acts as an object to perform database connectivity
 * functionality. The constructors will initiate a new database
 * connection via the JDBC drivers included in the external libraries.
 *
 */
public class DBConnection {


    private Connection conn; // database connection instance variable

    final String PUBLIC_DNS = "ec2-18-220-133-85.us-east-2.compute.amazonaws.com";
    final String PORT = "3306";
    final String DATABASE = "exsurfacepro";
    final String DBUSER = "root";
    final String DBPASS = "cosc457!";


    public void connectToDatabase() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Where is your MySQL JDBC Driver?");
            e.printStackTrace();
        }

        System.out.println("MySQL JDBC Driver Registered!");
        Connection connection = null;

        try {
            connection = DriverManager.
                    getConnection("jdbc:mysql://" + PUBLIC_DNS + ":" + PORT + "/" + DATABASE, DBUSER, DBPASS);
        } catch (SQLException e) {
            System.out.println("Connection Failed!:\n" + e.getMessage());
        }

        if (connection != null) {
            System.out.println("Connection Status: SUCCESS");
        } else {
            System.out.println("Connection Status: FAILED.");
        }

        // set the instance variable to the value of the new connecton
        this.conn = connection;


    }

    /** The following function returns a ResultSet object after the
     * SQL query has been run.
     */

    private ResultSet queryResult(String query) throws Exception{
        Statement stmt = this.conn.createStatement();
        return stmt.executeQuery(query);
    }

    /* The two functions work in conjunction - the private function doesn't contain any error handling, mainly
        because it doesn't need to. The public function will handle it if it arises.
     */

    public ResultSet executeQuery(String query){

        ResultSet rs;
        try{
            rs = this.queryResult(query);
        }catch(Exception e){
            //
            rs = null; // well rs isn't going to be anything if it's a bad query so init as null
            System.out.println(e.getMessage());
        }
        return rs;
    }



}

