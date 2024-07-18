/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Tri Nhan
 */
public class FAQ {
    private int id;
    private String custName;
    private String custContent;
    private int ItemId;

    public FAQ() {
    }

    public FAQ(int id, String custName, String custContent, int itemId) {
        this.id = id;
        this.custName = custName;
        this.custContent = custContent;
        this.ItemId = itemId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }

    public String getCustContent() {
        return custContent;
    }

    public void setCustContent(String custContent) {
        this.custContent = custContent;
    }

    public int getItemId() {
        return ItemId;
    }

    public void setItemId(int itemId) {
        this.ItemId = itemId;
    }

    @Override
    public String toString() {
        return "FAQ{" + "id=" + id + ", custName=" + custName + ", custContent=" + custContent + ", itemId=" + ItemId + '}';
    }
    
}
