/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Tri Nhan
 */
public class Category {
    private int CateId;
    private String CateName;
    private int Status;

    public Category() {
    }

    public Category(int CateId, String CateName, int Status) {
        this.CateId = CateId;
        this.CateName = CateName;
        this.Status = Status;
    }

    public int getCateId() {
        return CateId;
    }

    public void setCateId(int CateId) {
        this.CateId = CateId;
    }

    public String getCateName() {
        return CateName;
    }

    public void setCateName(String CateName) {
        this.CateName = CateName;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }

    @Override
    public String toString() {
        return "Category{" + "CateId=" + CateId + ", CateName=" + CateName + ", Status=" + Status + '}';
    }

  
}
