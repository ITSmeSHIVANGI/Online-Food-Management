package model;

public class Order {
	private int DishId;
	private String Email;
	private int Price;
	public int getDishId() {
		return DishId;
	}
	public void setDishId(int dishId) {
		DishId = dishId;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
	
}
