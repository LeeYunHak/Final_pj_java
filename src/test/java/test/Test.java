package test;

import static org.junit.Assert.*;

import javax.sql.DataSource;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root_context.xml")
public class Test {

	@Autowired
	DataSource dataSource;

	@org.junit.Test
	public void test() {
		assertNotNull(dataSource);
	}
}
