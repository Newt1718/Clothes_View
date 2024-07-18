package model;

public class Item {
  private int ItemID;
  private String ItemName;
  private int Price;
  private int CateId;
  private String urlPath;
  public Item() {
  }

    public Item(int ItemID, String ItemName, int Price, int CateId, String urlPath) {
        this.ItemID = ItemID;
        this.ItemName = ItemName;
        this.Price = Price;
        this.CateId = CateId;
        this.urlPath = urlPath;
    }

    public int getItemID() {
        return ItemID;
    }

    public Item(int ItemID, String ItemName, int Price, int CateId) {
        this.ItemID = ItemID;
        this.ItemName = ItemName;
        this.Price = Price;
        this.CateId = CateId;
    }

    public void setItemID(int ItemID) {
        this.ItemID = ItemID;
    }

    public String getItemName() {
        return ItemName;
    }

    public void setItemName(String ItemName) {
        this.ItemName = ItemName;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int Price) {
        this.Price = Price;
    }

    public int getCateId() {
        return CateId;
    }

    public void setCateId(int CateId) {
        this.CateId = CateId;
    }

    public String getUrlPath() {
        return urlPath;
    }

    public void setUrlPath(String urlPath) {
        this.urlPath = urlPath;
    }

    @Override
    public String toString() {
        return "Item{" + "ItemID=" + ItemID + ", ItemName=" + ItemName + ", Price=" + Price + ", CateId=" + CateId + ", urlPath=" + urlPath + '}';
    }

    public int getId() {
    return ItemID;
}


}
