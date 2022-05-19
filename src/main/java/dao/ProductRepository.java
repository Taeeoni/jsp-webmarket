package dao;

import java.util.ArrayList;
import java.util.List;
// dto에 있는 Product를 불러온다. 
import dto.Product;

// Product 에 대한 기능을 정의 
public class ProductRepository {
	// list에는 종류가 많은데 다형성을 활용해서 어떠한 리스트도 다 받아들이도록 하는것이 좋다.
	// list의 형식을 class (Product)로 주어서 리스트 정보가 클래스에 가게끔 
	private List<Product> products = new ArrayList<>();
	
	public ProductRepository() {
		// 원래는 DB에서 가져올 데이터 
		// 지금은 그냥 3개 임의로 만든거임 
		Product phone = new Product("P1234", "iphone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Retina HD display, 어쩌구");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("4.7-inch, 1334X750 Retina HD display, 어쩌구");
		notebook.setCategory("Smart Phone");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Old");
		
		Product tablet = new Product("P1236", "Galaxy Tab S7", 900000);
		tablet.setDescription("4.7-inch, 1334X750 Retina HD display, 어쩌구");
		tablet.setCategory("Smart Phone");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("New");
		
		//products 라는 리스트에 넣어준다.
		products.add(phone);
		products.add(notebook);
		products.add(tablet);
	}
	
	public List<Product> getAllProducts(){
		return products;
		
	}
	
	//ID로 상품 찾기
	public Product getProductById(String productId) {
		//원래 코드는 p.173 참고 
		return products.stream() // 상품 개수만큼 흘러갑니다.
				//필요한것 거르기 filter() -> product라는 객체변수를 통해서 받아와서 
				//그것의 id를 받는다(getProductId())
				//받아온 id가 파라미터 productId와 같은것을 찾아서!
				.filter((product) -> product.getProductId().equals(productId))
				.findFirst() // 첫번째 것 
				.get(); // 언어
	}


}
