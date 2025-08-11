package com.shiyatsu.training.docker.user;

import com.shiyatsu.training.docker.app.Context;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/v1/users")
public class UsersRestController {

	@GetMapping
	public List<User> getUsers() {
		return Context.getUsersAsList();
	}
	
}
