/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.helper;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Bhatti
 */
public class Connectionclass 
{
public static Connection getConnection() throws Exception      // declaring parent exception
{
    Connection con=null;
    // jdbc code is below
    Class.forName("com.mysql.cj.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/info", "root", "");
    return  con;  
}
}
