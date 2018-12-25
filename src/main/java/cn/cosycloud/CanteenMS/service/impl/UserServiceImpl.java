package cn.cosycloud.CanteenMS.service.impl;

import cn.cosycloud.CanteenMS.entity.UserEntity;
import cn.cosycloud.CanteenMS.repository.UserRepository;
import cn.cosycloud.CanteenMS.service.UserService;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public void creatUser(String userName, String levelId, String departmentId) {


        UserEntity user = new UserEntity();
        user.setUserName("byhuang");
        user.setPassword("123456");
        user.setUserLevelId("11");
        user.setDepartmentId("11");


        userRepository.save(user);
    }
}
