package com.techelevator.controller;

import com.techelevator.dao.UserDao;
import com.techelevator.model.User;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
@RestController
@PreAuthorize("isAuthenticated()")
@CrossOrigin
public class UserController {

        private UserDao userDao;

        public UserController(UserDao userDao) {
            this.userDao = userDao;
        }

        @RequestMapping(path = "/users/", method = RequestMethod.GET)
        @PreAuthorize("hasAnyRole('ROLE_ADMIN, ROLE_USER')")
        public List<User> listUsers(){
            return userDao.getUsers();
        }

        @RequestMapping(path = "/users/find/{id}", method = RequestMethod.GET)
        @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_USER')")
        public User getUserById(@PathVariable int id) {
            User user = userDao.getUserById(id);
            if (user == null) {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "User not found.");
            } else {
                return user;
            }
        }

        @RequestMapping(path = "/users/{username}", method = RequestMethod.GET)
        @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_USER')")
        public User findByUsername(@PathVariable String username) {
            User user = userDao.getUserByUsername(username);
            if (user == null) {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Username not found.");
            } else {
                return user;

        }
    }
}
