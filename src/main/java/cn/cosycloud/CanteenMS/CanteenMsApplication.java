package cn.cosycloud.CanteenMS;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class CanteenMsApplication {

	public static void main(String[] args) {
		SpringApplication.run(CanteenMsApplication.class, args);
	}
}
