package cn.cosycloud.CanteenMS.repository;

import cn.cosycloud.CanteenMS.entity.MealTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MealRepository extends JpaRepository <MealTypeEntity,Long> {
}
