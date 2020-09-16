/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.helper;

import com.Pojo.TOdoPojo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Bhatti
 */
public class pojoDao {
    public static int save(TOdoPojo object) throws Exception
    {
        String sql="INSERT INTO `todo`(`name`, `description`,  `status`) VALUES (?,?,?)";
        int result=0;
        // logic of insertion....
        Connection con= Connectionclass.getConnection();
        PreparedStatement stmnt=con.prepareStatement(sql);
        stmnt.setString(1,object.getName());
        stmnt.setString(2,object.getDescription());
        stmnt.setString(3,"pending");
       result= stmnt.executeUpdate();
        return result;
    }
    public static List<TOdoPojo> fetchAllTodo() throws Exception
    {
        List<TOdoPojo> list=null;
        String sql="SELECT * FROM `todo`";
        // fetching todo
            Connection con= Connectionclass.getConnection();
        PreparedStatement stmnt=con.prepareStatement(sql);
        ResultSet rs=stmnt.executeQuery();
        list=new ArrayList<TOdoPojo>();
        while(rs.next())
        {
            TOdoPojo object=new TOdoPojo();
           object.setId(rs.getInt("id"));
           object.setName(rs.getString("name"));
           object.setDescription(rs.getString("description"));
           object.setDate(rs.getTimestamp("time"));
           object.setStatus(rs.getString("status"));
           list.add(object);
        }
        return list;
    }
    public static int delete(int id) throws Exception
    {
        String sql="delete FROM `todo` where `id` = "+id;
        int i=-1;
         Connection con= Connectionclass.getConnection();
         PreparedStatement stmnt=con.prepareStatement(sql);
        i= stmnt.executeUpdate();
        return i;
    }
      public static TOdoPojo fetchTodoById(int id) throws Exception
    {
        TOdoPojo object=new TOdoPojo();
          String sql="select * FROM `todo` where `id` = "+id;
         Connection con= Connectionclass.getConnection();
         PreparedStatement stmnt=con.prepareStatement(sql);
       ResultSet rs= stmnt.executeQuery();
       rs.next();
       object.setId(rs.getInt("id"));
       object.setName(rs.getString("name"));
       object.setDescription(rs.getString("description"));
       object.setDate(rs.getTimestamp("time"));
       object.setStatus(rs.getString("status"));
        return object;
    }
        public static int update(TOdoPojo object) throws Exception
    {
        int i=-1;
         String sql="UPDATE `todo` SET `status`='"+object.getStatus()+"' WHERE id ="+object.getId();
         Connection con= Connectionclass.getConnection();
         PreparedStatement stmnt=con.prepareStatement(sql);
         i=stmnt.executeUpdate();
        return i;
    }
        public static List<TOdoPojo> fetchRecentPost() throws Exception
        {
            List<TOdoPojo> list=null;
            // lgic is here 
             String sql="select * FROM `todo` order by id desc limit 3 ";
         Connection con= Connectionclass.getConnection();
         PreparedStatement stmnt=con.prepareStatement(sql);
         ResultSet rs=stmnt.executeQuery();
          list=new ArrayList<TOdoPojo>();
        while(rs.next())
        {
            TOdoPojo object=new TOdoPojo();
           object.setId(rs.getInt("id"));
           object.setName(rs.getString("name"));
           object.setDescription(rs.getString("description"));
           object.setDate(rs.getTimestamp("time"));
           object.setStatus(rs.getString("status"));
           list.add(object);
        }
            return list;
        }
}
