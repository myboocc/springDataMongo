package springDataMongo;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import it.mongo.Address;
import it.mongo.Person;
import it.mongo.dao.PersonDao;
import it.mongo.dao.impl.PersonMongoDaoImpl;

//告诉junit spring配置文件
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:spring/spring-context.xml" })
public class MongoTemplateTest {
	@Resource
	private PersonMongoDaoImpl personMongo;

	@Test 
	public void testMongoTemplate() { 
//		personMongo.insertPerson(new Person("wukong",24,new Address("石家庄","鑫达路",20))); 
//		personMongo.removePerson("name3"); 
		//personMongo.updatePerson(); 
		System.out.println(personMongo.findAll()); 
		System.out.println(personMongo.findForRequery("name3")); 
	}
}
