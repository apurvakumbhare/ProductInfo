package ProductServices;


import java.util.List;

import ProductBeans.Product;

public interface Serviced {
	public String addProduct(Product product);
	public List<Product> getProductList();
}
