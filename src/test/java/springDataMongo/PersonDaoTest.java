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
//告诉junit spring配置文件
@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration({ "classpath:spring/spring-context.xml" })
public class PersonDaoTest {
	@Resource
	private PersonDao personDao;

	/* 先往数据库中插入10个person */ 
	@Test
	public void testMongo() {
		List<Person> persons = new ArrayList<Person>();
		for (int i = 0; i < 10; i++) {
			persons.add(new Person("name" + i, i, new Address("石家庄", "裕华路", i)));
		}
		personDao.save(persons);
	}

	@Test
	public void findMongo() {
		System.out.println(personDao.findByAge(2, 8, "name6"));
	}
}
