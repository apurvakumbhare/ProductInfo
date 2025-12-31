package ProductEntities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class ShelfMaintainance {
	@Id
int id;
int count;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getCount() {
	return count;
}
public void setCount(int count) {
	this.count = count;
}
public ShelfMaintainance(int id, int count) {
	super();
	this.id = id;
	this.count = count;
}
public ShelfMaintainance() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "ShelfMaintainance [id=" + id + ", count=" + count + "]";
}

}
