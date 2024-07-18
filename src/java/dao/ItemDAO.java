package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Item;

public class ItemDAO extends DBContext {

    public List<Item> getAllItems() {
        List<Item> items = new ArrayList<>();

        String sql = "SELECT * FROM Items";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Item item = new Item(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5));
                items.add(item);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return items;
    }

    public Item getItemById(String itemId) {
        String sql = "SELECT * FROM Items WHERE itemID = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, itemId);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return new Item(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void editItem(String itemId, String itemName, String itemPrice, String categoryId) {
        String sql = "UPDATE Items "
                + "SET ItemName = ?,\n "
                + "Price = ?, \n"
                + "CateId = ? \n"
                + "WHERE ItemID = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, itemName);
            stm.setString(2, itemPrice);
            stm.setString(3, categoryId);
            stm.setString(4, itemId);
            stm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Item> searchItem(String txt) {
        List<Item> list = new ArrayList<>();
        String sql = "SELECT * FROM Items WHERE ItemName LIKE ?";

        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, "%" + txt + "%");
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                list.add(new Item(rs.getInt("ItemID"), rs.getString("ItemName"), rs.getInt("Price"), rs.getInt("CateId"), rs.getString("image_path")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
