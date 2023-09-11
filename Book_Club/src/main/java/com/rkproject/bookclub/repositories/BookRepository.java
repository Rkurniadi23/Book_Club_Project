package com.rkproject.bookclub.repositories;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;

import com.rkproject.bookclub.models.Book;
import com.rkproject.bookclub.models.User;

public interface BookRepository extends CrudRepository<Book, Long>{
	public ArrayList<Book> findAll();
	public ArrayList<Book> findAllByUsers(User user);
	public ArrayList<Book> findByUsersNotContains(User user);
}
