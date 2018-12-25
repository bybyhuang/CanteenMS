package cn.cosycloud.CanteenMS.api;


import cn.cosycloud.CanteenMS.entity.UserEntity;
import cn.cosycloud.CanteenMS.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController

@RequestMapping("/api/user")
public class UserApi {

    @Autowired
    private UserRepository userRepository;

    @RequestMapping("login")
    public UserEntity login(String userName,String password){


        UserEntity user = userRepository.findByUserNameAndPassword(userName,password);
        return user;
    }


}
