package com.rkproject.bookclub.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rkproject.bookclub.models.Book;
import com.rkproject.bookclub.models.User;
import com.rkproject.bookclub.repositories.BookRepository;

@Service
public class BookService {
	@Autowired
	private BookRepository bookRepo;
	
	public ArrayList<Book> findAll() {
		return bookRepo.findAll();
	}
	
	public Book addBook(Book book) {
		return bookRepo.save(book);
	}
	
	public Book findById(Long id){
		return bookRepo.findById(id).orElse(null);
	}
	
	public Book editBook(Book book) {
		return bookRepo.save(book);
	}
	
	public void deleteBook(Book book) {
		bookRepo.delete(book);
	}
	
	public ArrayList<Book> getFavoritBooks(User user){
		return bookRepo.findAllByUsers(user);
	}
	
	public ArrayList<Book> getNotFavoritBooks(User user){
		return bookRepo.findByUsersNotContains(user);
	}
	
	public Book updateBook(Book book) {
		return bookRepo.save(book);
	}
}
