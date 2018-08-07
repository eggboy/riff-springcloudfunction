package io.pivotal.riff.function;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.function.Function;


@SpringBootApplication
public class FunctionApplication {

	@Bean
	Function<String, String> sayHi() {
		return s -> "Hi Manila " + s;
	}

	public static void main(String[] args) {
		SpringApplication.run(FunctionApplication.class, args);
	}
}
