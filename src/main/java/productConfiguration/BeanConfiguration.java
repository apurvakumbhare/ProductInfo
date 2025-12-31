package productConfiguration;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.cfg.Environment;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages= {
		"ProductBeans",
		"ProductController",
		"ProductDao",
		"ProductEntities",
		"ProductServices"
})
public class BeanConfiguration {
	
	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource ds=new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/product_db");
		ds.setUsername("root");
		ds.setPassword("root");
		return ds;
	}
	@Bean
	public LocalSessionFactoryBean sessionFactory() {
		LocalSessionFactoryBean lsfb=new LocalSessionFactoryBean();
		lsfb.setDataSource(dataSource());
		lsfb.setHibernateProperties(property());
		lsfb.setPackagesToScan("ProductEntities");
	return lsfb;
	}
	public Properties property() {
		Properties prop =new Properties();
		prop.setProperty(Environment.DIALECT,  "org.hibernate.dialect.MySQL8Dialect");
		prop.setProperty(Environment.HBM2DDL_AUTO, "update");
		prop.setProperty(Environment.SHOW_SQL, "true");
	return prop;
	}
	@Bean
	public InternalResourceViewResolver viewResolver() {
	    InternalResourceViewResolver resolver = new InternalResourceViewResolver();
	    resolver.setPrefix("/WEB-INF/views/");
	    resolver.setSuffix(".jsp");
	    return resolver;
	}
	
}
