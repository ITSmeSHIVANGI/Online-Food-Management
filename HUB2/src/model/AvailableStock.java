package model;

public class AvailableStock {
	private String DishName;
	private Integer DishId;
	private Integer Qleft;
	public String getDishName() {
		return DishName;
	}
	public void setDishName(String dishName) {
		DishName = dishName;
	}
	public Integer getDishId() {
		return DishId;
	}
	public void setDishId(Integer dishId) {
		DishId = dishId;
	}
	public Integer getQleft() {
		return Qleft;
	}
	public void setQleft(Integer qleft) {
		Qleft = qleft;
	}
	
}
