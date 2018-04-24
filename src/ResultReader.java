import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;

/**
 * Created by kyleharris on 9/7/17.
 */
public class ResultReader {

    /** This class defines an object that makes it easy to read and parse result sets returned by the
     *  database queries. It uses a ResultSet object from java.SQL and implements many common facilities
     *  that will be encountered when pagnating SQL result sets.
     */

    private ResultSet rs;
    private ResultSetMetaData rsmd;

    public ResultReader(ResultSet rs){
        this.rs = rs;
        try {
            rsmd = rs.getMetaData();
        }catch(java.sql.SQLException e){
            System.out.println(e.getMessage());
        }
    }

    /* The following function returns an ArrayList of the names of all columns in the
     * result set. */

    public ArrayList getColumns(){
        ArrayList<String> columns = new ArrayList<String>();
        /*
         In order to do this, we must get the column count from the metadata
         */
        try {
            int cols = this.rsmd.getColumnCount();
            // iterate for the coulmn count
            for(int i = 1; i<=cols; i++){
                columns.add((String) rsmd.getColumnName(i));
            }
        }catch(java.sql.SQLException e){
            System.out.println(e.getMessage());
        }

        return columns;
    }

    /* Just testing this */
    public void getResultTable(){

        return;
    }

}
