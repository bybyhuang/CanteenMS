package cn.cosycloud.CanteenMS.api;


import cn.cosycloud.CanteenMS.common.until.ApiResponse;
import cn.cosycloud.CanteenMS.entity.MealTypeEntity;
import cn.cosycloud.CanteenMS.repository.MealRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/goods")
public class GoodsApi {

    @Autowired
    private MealRepository mealRepository;

    /*
     * @Author byhuang
     * @Description 获取订餐时间
     * @Date 5:21 PM 2018/12/28
     * @Param
     * @return
     **/

    @RequestMapping("getGoodsTime")
    public ApiResponse getGoodsTime(){

        List<MealTypeEntity> mealRepositories = mealRepository.findAll();
        return ApiResponse.initSuccess(mealRepositories);

    }





}
