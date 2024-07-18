/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;

/**
 *
 * @author Tri Nhan
 */
public class UserDAO extends DBContext {
       public Account checkLogin(String username, String password) {
        String sql = "select * from account\n"
                + "where username = ?\n"
                + "and\n"
                + "password = ?";
        try {

            PreparedStatement stm = connection.prepareStatement(sql);//bat buoc
            
            //set gia tri
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1), rs.getString(2));
            }
        } catch (SQLException e) {
        }
        return null;
    }

}
