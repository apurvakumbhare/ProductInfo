package ProductServices;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ProductBeans.Product;
import ProductDao.DataBaseimpl;
import ProductEntities.ProductEntity;
@Service
public class serviceimpl implements Serviced{
@Autowired
DataBaseimpl da;
@Override
	public String addProduct(Product product) {
		return da.addProductindb(productIntoEntity(product));
	}
	private ProductEntity productIntoEntity(Product product) {
		ProductEntity entity=new ProductEntity();
		entity.setId(product.getId());
		entity.setProductname(product.getProductname());
		entity.setBrandname(product.getBrandname());
		entity.setPrice(product.getPrice());
		entity.setQuantity(product.getQuantity());
		entity.setShelf(product.getShelf());
		return entity;
	}
	public List<Product> getProductList() {
		List<ProductEntity> list=da.getList();
		
		List<Product> ans=new ArrayList<Product>();
		for(ProductEntity pe:list) {
			
			ans.add(intoProduct(pe));
		}
		return ans;
	}
	public Product intoProduct(ProductEntity pe) {
		Product p=new Product();
		p.setId(pe.getId());
		p.setProductname(pe.getProductname());
		p.setBrandname(pe.getBrandname());
		p.setPrice(pe.getPrice());
		p.setQuantity(pe.getQuantity());
		p.setShelf(pe.getShelf());
		
		return p;
	}
	public Object getProductById(int id) {
		Object ans=da.getbyId(id);
		return (!ans.equals("Book is not present"))?intoProduct((ProductEntity)ans):ans;
	}
	public List<Product> getProductByShelf(int shelf) {
 List<ProductEntity> list=da.getListbyShelf(shelf);
 if (list == null) {
     return new ArrayList<>(); 
 }
		List<Product> ans=new ArrayList<Product>();
		for(ProductEntity pe:list) {
			
			ans.add(intoProduct(pe));
		}
		return ans;
	}
}
