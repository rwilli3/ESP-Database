import java.util.ArrayList;
import java.sql.ResultSet;

/**
 * Created by Kyle Harris on 9/5/17.
 */

public class main {
    public static void main (String [] args){
        // function just tests the database connectivity

        DBConnection dbc = new DBConnection();
        dbc.connectToDatabase();

        // the DBConnection class only handles the connection and the queries. It doesn't parse the result sets


        String query = "SELECT * FROM test_users";

        ResultReader reader = new ResultReader(dbc.executeQuery(query));

        // code snippet will iterate the arraylist
        ArrayList<String> columns = reader.getColumns();
        for(String col : columns){
            System.out.println(col);
        }


    }
}
