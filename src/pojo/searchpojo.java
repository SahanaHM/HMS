package pojo;

public class searchpojo {
int foodid;
String category;
String name;
int price;

public searchpojo() {
	super();
	// TODO Auto-generated constructor stub
}

public searchpojo(int foodid, String category, String name, int price) {
	super();
	this.foodid = foodid;
	this.category = category;
	this.name = name;
	this.price = price;
}

public int getFoodid() {
	return foodid;
}

public void setFoodid(int foodid) {
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

public int getPrice() {
	return price;
}

public void setPrice(int price) {
	this.price = price;
}

@Override
public String toString() {
	return "searchpojo [foodid=" + foodid + ", category=" + category + ", name=" + name + ", price=" + price + "]";
}
}

