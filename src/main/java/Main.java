import javax.xml.transform.Result;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class Main {

    public static void main(String arg[]) throws ClassNotFoundException {
        Scanner s = new Scanner(System.in);
        try {
//            String url = "jdbc:mysql://localhost:3306/AutonomParking";
//            Connection conn = DriverManager.getConnection(url, "root", "slghtlt1");
//            Class.forName("com.mysql.jdbc.Driver");
//            Statement st = conn.createStatement();
            System.out.println("Choose an option: ");
            int var = s.nextInt();
            switch (var) {
                case 1:
                    insertData();
                    break;
                case 2:
                    printData();
                    break;
                case 3:
                    System.out.println("Payment area");
                default:
                    System.out.println("Choose a valid option");

            }


        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    static void insertData() throws SQLException, ClassNotFoundException {
        Scanner s = new Scanner(System.in);

        String url = "jdbc:mysql://localhost:3306/AutonomParking";
        Connection conn = DriverManager.getConnection(url, "root", "slghtlt1");
        Class.forName("com.mysql.jdbc.Driver");
        Statement st = conn.createStatement();

        System.out.println("Insert VehicleNr: ");

        String vehNr = s.next();
        SimpleDateFormat formatter = new SimpleDateFormat("dd.MM.yy HH:mm:ss");
        Date date = new Date(System.currentTimeMillis());
        System.out.println(formatter.format(date));

        st.executeUpdate("Insert INTO InforTichet " + "VALUES(default, '" + vehNr + "', '" + formatter.format(date) + "')");
    }

    static void printData() throws ClassNotFoundException, SQLException {
        Scanner s = new Scanner(System.in);

        String url = "jdbc:mysql://localhost:3306/AutonomParking";
        Connection conn = DriverManager.getConnection(url, "root", "slghtlt1");
        Class.forName("com.mysql.jdbc.Driver");
        Statement st = conn.createStatement();

        System.out.println("Insert your tichet nr: ");
        int tichetID = s.nextInt();

        String sql = "Select IDTichet, NrInmatriculare, OraIntrare from InforTichet";
        ResultSet rs = st.executeQuery(sql);

        while (rs.next()) {
            int id = rs.getInt("IDTichet");
            String nrInmatriculare = rs.getString("NrInmatriculare");
            Date dateEntry = rs.getDate("OraIntrare");

            if (id == tichetID)
                System.out.println("ID with nr " + id + ", and Nr registration " + nrInmatriculare + ", you entered at this hour:" + dateEntry);
            else break;
        }
        System.out.println("Enter a valid option, please repet");
    }

}
