package model;

import java.util.ArrayList;
import java.util.List;

public class Cart {

    String id;
    float totalPrice;
    List<CartItem> items;

    public Cart() {
    }

    public Cart(List<CartItem> items) {
        this.items = items;
    }

    public Cart(String id, float totalPrice) {
        this.id = id;
        this.totalPrice = totalPrice;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public List<CartItem> getItems() {
        return items;
    }

    public void setItems(List<CartItem> items) {
        this.items = items;
    }

    boolean checkExist(int id) {
        for (CartItem item : items) {
            if (item.getItem().getId() == id) {
                return true;
            }
        }
        return false;
    }

    CartItem getItemById(int id) {
        for (CartItem item : items) {
            if (item.getItem().getId() == id) {
                return item;
            }
        }
        return null;
    }

    public void addItem(CartItem newItem) {
        if (checkExist(newItem.getItem().getId())) {
            CartItem oldItem = getItemById(newItem.getItem().getId());
            oldItem.setQuantity(oldItem.getQuantity() + newItem.getQuantity());
        } else {
            items.add(newItem);
        }

    }

    public void removeItem(int id) {
        if (getItemById(id) != null) {
            items.remove(getItemById(id));
        }
    }

    public void editQuantity(int id, int newQuantity) {
        List<CartItem> itemsToRemove = new ArrayList<>();
        for (CartItem item : items) {
            if (item.getItem().getId() == id) {
                item.setQuantity(newQuantity);
                if (newQuantity == 0) {
                    itemsToRemove.add(item);
                }
            }
        }

        items.removeAll(itemsToRemove);
    }

    public float getTotalMoneyPaid() {
        float sum = 0;
        for (CartItem item : items) {
            sum += (item.getQuantity() * item.getItem().getPrice());
        }
        return sum;
    }

    public int getTotalCar() {
        int totalCar = 0;
        for (CartItem item : items) {
            totalCar += item.getQuantity();
        }
        return totalCar;
    }

    public void increaseQuantity(int id) {
        CartItem item = getItemById(id);
        if (item != null) {
            item.setQuantity(item.getQuantity() + 1);
        }
    }

    public void decreaseQuantity(int id) {
        CartItem item = getItemById(id);
        if (item != null) {
            int newQuantity = item.getQuantity() - 1;
            if (newQuantity > 0) {
                item.setQuantity(newQuantity);
            } else {
                removeItem(id);
            }
        }
    }

    @Override
    public String toString() {
        return "Cart{" + "id=" + id + ", totalPrice=" + totalPrice + '}';
    }
}
