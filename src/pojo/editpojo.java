package pojo;

public class editpojo {
Integer foodid;
String category;
String name;
Integer price;
public editpojo() {
	super();
	// TODO Auto-generated constructor stub
}
public editpojo(Integer foodid, String category, String name, Integer price) {
	super();
	this.foodid = foodid;
	this.category = category;
	this.name = name;
	this.price = price;
}
public Integer getFoodid() {
	return foodid;
}
public void setFoodid(Integer foodid) {
	this.foodid = foodid;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public Integer getPrice() {
	return price;
}
public void setPrice(Integer price) {
	this.price = price;
}
@Override
public String toString() {
	return "editpojo [foodid=" + foodid + ", category=" + category + ", name=" + name + ", price=" + price + "]";
}



}