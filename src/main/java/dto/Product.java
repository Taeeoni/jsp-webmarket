package dto;

import java.io.Serializable;

// 모델 클래스 
// JSP : 자바빈즈라고 한다. (조건 : 1. getter/setter, 2. 기본 생성자, 3. Serializable)

public class Product implements Serializable{
	
	//자바 시스템 내부에서 사용되던 객체 또는 데이터를 외부의 자바 시스템에도 사용할 수 있도록
	// 바이트 형태로 데이터 변환
	//내용이 바뀌었을 때 id 값을 바꾸어주면서 저장해야한다. 
	//인터페이스 : 다형성 때문에 사용 
	private static final long serialVersionUID = 2867748905925104542L;
	
	private String productId;
	private String name;
	private int unitPrice;
	private String description;
	private String manufacturer;
	private String category;
	private long unitsInStock;
	private String condition;
	
	
	
	public Product() {};
	
	public Product(String productId, String name, int unitPrice) {
		this.productId = productId;
		this.name = name;
		this.unitPrice = unitPrice;
	}
	
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public long getUnitsInStock() {
		return unitsInStock;
	}
	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	
	// 데이터들을 String으로서 보게끔 하기 위해 틀을 만들어 주는 느낌
	// toString을 해주지 않으면 hash 코드 형태로 나온다. ex) dto.Product@41a4892 
	@Override
	public String toString() {
		return "Product [productId=" + productId + ", name=" + name + ", unitPrice=" + unitPrice + ", description="
				+ description + ", manufacturer=" + manufacturer + ", category=" + category + ", unitsInStock="
				+ unitsInStock + ", condition=" + condition + "]";
	}
	
	
	
}
