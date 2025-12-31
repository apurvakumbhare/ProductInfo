package ProductDao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ProductEntities.ProductEntity;
import ProductEntities.ShelfMaintainance;
@Repository
public class DataBaseimpl implements DataAccess{
	@Autowired
	SessionFactory factory;
	Session session=null;
	Transaction tr=null;
	@Override

	public String addProductindb(ProductEntity product) {
	
		  try {
	            session = factory.openSession(); 
	            tr = session.beginTransaction();
	            if(session.get(ProductEntity.class,product.getId())!=null) {
	            	return "Product with the similar 'Id' already exist";
	            }
	            
	            ShelfMaintainance s=session.get(ShelfMaintainance.class,product.getShelf());
	            if(s!=null && s.getCount()==2) {
	            	return "Shelf is full ,Try another shelf";
	            }
	            
	            session.save(product); 
	            if(s==null) {
	            	ShelfMaintainance s1=new ShelfMaintainance(product.getShelf(),1);
	            	session.save(s1 );
	            }
	            else {int count=s.getCount();
	            	s.setCount(count+1);
	            	session.update(s );
	            }
	          
	            tr.commit();                           
	        } catch (Exception e) {
	            if (tr != null) tr.rollback();        
	            e.printStackTrace();
	        } finally {
	            if (session != null) session.close();  
	        }
		  
		return "Product Saved Successfully";
	}
	public List<ProductEntity>  getList() {
		List<ProductEntity> list=new ArrayList<>();
		try {
            session = factory.openSession(); 
            tr = session.beginTransaction();
					Query<ProductEntity> q = session.createQuery("from ProductEntity", ProductEntity.class);
					list = q.getResultList();
        } catch (Exception e) {
            if (tr != null) tr.rollback();        
            e.printStackTrace();
        } finally {
            if (session != null) session.close();  
        }
		
		return list;
	}
	public Object getbyId(int id) {
		ProductEntity product=null;
		try {
            session = factory.openSession(); 
            tr = session.beginTransaction();
          product=session.get(ProductEntity.class, id);                       
        } catch (Exception e) {
            if (tr != null) tr.rollback();        
            e.printStackTrace();
        } finally {
            if (session != null) session.close();  
        }
		return (product!=null)?product:"Book is not present";
	}
	public List<ProductEntity> getListbyShelf(int s) {
		List<ProductEntity> list=new ArrayList<ProductEntity>();
		try {
            session = factory.openSession(); 
            tr = session.beginTransaction();
		  Query<ProductEntity> q = session.createQuery("from ProductEntity where shelf = :s", ProductEntity.class);
		  q.setParameter("s", s);
		  list = q.getResultList();
        } catch (Exception e) {
            if (tr != null) tr.rollback();        
            e.printStackTrace();
        } finally {
            if (session != null) session.close();  
        }
		
		return list;
	}

}
