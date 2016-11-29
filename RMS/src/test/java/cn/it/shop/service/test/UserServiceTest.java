package cn.it.shop.service.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.it.shop.model.User;
import cn.it.shop.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:applicationContext-*.xml")
public class UserServiceTest {
	@Resource(name="userService")
	private UserService userService;
	@Test
	public void testQueryAllUser(){
		List<User> u=userService.query();
		System.out.println(u.size());
	}
}
