package cn.cosycloud.CanteenMS.repository;

import cn.cosycloud.CanteenMS.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UserEntity,String> {
}
