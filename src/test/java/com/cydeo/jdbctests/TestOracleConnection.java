package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {

    public static void main(String[] args) throws SQLException {

        String dbUrl="jdbc:oracle:thin:@52.91.18.144:1521:XE";
        String dbUsername="hr";
        String dbPassword="hr";

        /*HOW TO INIT VARIABLES?
        --MAC --> OPT + ENTER
         */
        //DriverManager Class getConnection method will help to connect database
       Connection conn =  DriverManager.getConnection(dbUrl,dbUsername,dbPassword);

       //It helps us to execute queries
        Statement statement = conn.createStatement();

        //ResultSet will store data after execution. It stores only data(there is no table info)
       ResultSet rs = statement.executeQuery("select * from regions");

       /*
            How to run query from Java file
                - Click over Query (dont choose anywhere )
                    - MAC --> CMD+ENTER
                    - WIN --> CTRL+ENTER

                - Choose session

             */


        // GETTING DATA
        // next() ---> Moves the cursor forward one row from its current position.

        rs.next();
        //pointer shows the first row
        //how to get data
        //rs.getInt(index) --> it returns integer.Index start from 1 into SQL. It refers column position
        //it return int
        System.out.println(rs.getInt(1));
        //it returns String
        System.out.println(rs.getString(1));

        //rs.getInt(columLable)
        System.out.println(rs.getInt("Region_ID"));

        //get me Europe
        System.out.println(rs.getString(2));
        System.out.println(rs.getString("Region_Name"));

        System.out.println("------ SECOND ROW -------");

        rs.next();
        // 2 SECOND ROW    2 - Americas

        System.out.println(rs.getString(1)+" - "+rs.getString(2));
        System.out.println(rs.getString("REGION_ID")+" - "+rs.getString("REGION_NAME"));


        // 3 SECOND ROW    3 - Asia
        rs.next();

        System.out.println(rs.getString(1)+" - "+rs.getString(2));
        System.out.println(rs.getString("REGION_ID")+" - "+rs.getString("REGION_NAME"));

        System.out.println("------ 4TH ROW -------");

        // 4 TH ROW    4 - Middle East and Africa
        rs.next();
        System.out.println(rs.getString(1)+" - "+rs.getString(2));
        System.out.println(rs.getString("REGION_ID")+" - "+rs.getString("REGION_NAME"));

       //close connections
        rs.close();
        statement.close();
        conn.close();
    }
}
