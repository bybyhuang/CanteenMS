package cn.cosycloud.CanteenMS.api;


import cn.cosycloud.CanteenMS.common.until.ApiResponse;
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
    public ApiResponse login(String userName,String password){


        UserEntity user = userRepository.findByUserNameAndPassword(userName,password);
        if (user == null){
            return new ApiResponse("用户名或密码不正确!");
        }

        return new ApiResponse(user);
    }
    @RequestMapping("login2")
    public ApiResponse login2(String userName,String password){


        UserEntity user = userRepository.findByUserNameAndPassword(userName,password);
        if (user == null){
            return new ApiResponse("用户名或密码不正确!");
        }

        return new ApiResponse(user);
    }






}
