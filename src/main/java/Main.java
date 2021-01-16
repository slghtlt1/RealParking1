import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class Main {

    public static void main(String arg[]) throws ClassNotFoundException {
        Scanner s = new Scanner(System.in);
        try {
            String url = "jdbc:mysql://localhost:3306/AutonomParking";
            Connection conn = DriverManager.getConnection(url,"root","slghtlt1");
            Class.forName("com.mysql.jdbc.Driver");
            Statement st = conn.createStatement();
            System.out.println("Choose an option: ");
            int var = s.nextInt();
            switch(var){
                case 1:
                    System.out.println("Insert VehicleNr: ");
                    String vehNr = s.next();
                    SimpleDateFormat formatter= new SimpleDateFormat("dd.MM.yy");
                    Date date = new Date(System.currentTimeMillis());
                    System.out.println(formatter.format(date));
                    st.executeUpdate("Insert INTO InforTichet "+"VALUES(default, '"+vehNr+"', '"+formatter.format(date)+"')");
                    break;
            }


        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
