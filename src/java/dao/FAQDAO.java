/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.FAQ;
import model.Item;

/**
 *
 * @author Tri Nhan
 */
public class FAQDAO extends DBContext {
  public List<FAQ> getFAQByItemID(int ItemID) {
        List<FAQ> listF = new ArrayList<>();
        String sql = "SELECT *\n"
                + "  FROM [dbo].[FAQ]\n"
                + "  where ItemId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
           st.setInt(1, ItemID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                listF.add(new FAQ(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4)
                ));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return listF;
    }
}
