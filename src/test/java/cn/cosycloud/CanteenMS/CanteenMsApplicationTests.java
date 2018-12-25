package cn.cosycloud.CanteenMS;

import cn.cosycloud.CanteenMS.entity.UserEntity;
import cn.cosycloud.CanteenMS.repository.UserRepository;
import cn.cosycloud.CanteenMS.service.UserService;
import cn.cosycloud.CanteenMS.service.impl.UserServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CanteenMsApplicationTests {


	@Autowired
	UserService userService;

	@Test
	public void contextLoads() {
	}


	@Test
	public void getUsers(){
//		List<UserEntity> list = user.findAll();
//		System.out.println(list);


		userService.creatUser("ceshi","12","12");




	}

	public void inserUsser(){
	    UserEntity user = new UserEntity();

    }



}
