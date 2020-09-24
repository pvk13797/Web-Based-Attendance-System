import java.util.*;
import java.sql.*;
public class AttendanceCount 
{
    static int attCount(String rl,String at)
    {
        int n=0;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
            PreparedStatement pr=con.prepareStatement("select count(Action) from attendance where Action='Present' and StudentRollNo='15UCS001'" );
            ResultSet rs=pr.executeQuery();
            while(rs.next())
            {
                n=rs.getInt(1);
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return(n);
    }
    
}

