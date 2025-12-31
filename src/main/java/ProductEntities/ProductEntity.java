package ProductEntities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="products")
public class ProductEntity {
	@Id
	private int id;
	private String productname;
	private String brandname;
	private long price;
	private int quantity;
	private int shelf;
	public int getShelf() {
		return shelf;
	}
	public void setShelf(int shelf) {
		this.shelf = shelf;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getBrandname() {
		return brandname;
	}
	public void setBrandname(String brandname) {
		this.brandname = brandname;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "ProductEntity [id=" + id + ", productname=" + productname + ", brandname=" + brandname + ", price="
				+ price + ", quantity=" + quantity + ", shelf=" + shelf + "]";
	}
	public ProductEntity(int id, String productname, String brandname, long price, int quantity, int shelf) {
		super();
		this.id = id;
		this.productname = productname;
		this.brandname = brandname;
		this.price = price;
		this.quantity = quantity;
		this.shelf = shelf;
	}
	public ProductEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
