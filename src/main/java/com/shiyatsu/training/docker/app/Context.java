package com.shiyatsu.training.docker.app;

import com.shiyatsu.training.docker.user.User;
import org.springframework.stereotype.Component;
import java.util.*;

@Component
public class Context {

    private static final Map<UUID, User> users = new HashMap<>();

    public static void init() {
        initUsers();
    }

    private static void initUsers() {
        UUID adminId = UUID.randomUUID();
        UUID totoId = UUID.randomUUID();
        users.putIfAbsent(adminId, new User(adminId, "admin", "admin"));
        users.get(adminId).getRoles().add("ROLE_ADMIN");
        users.putIfAbsent(totoId, new User(totoId, "toto", "toto"));
        users.get(totoId).getRoles().add("ROLE_USER");
    }

    public static List<User> getUsersAsList() {
        return new ArrayList<>(users.values());
    }

}
