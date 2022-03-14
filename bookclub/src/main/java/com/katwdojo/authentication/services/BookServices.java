package com.katwdojo.authentication.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.katwdojo.authentication.models.Book;
import com.katwdojo.authentication.repositories.BookRepository;


@Service
public class BookServices {

	@Autowired
	private BookRepository bookrepo;
	
	public List<Book> getAllBooks(){
		return bookrepo.findAll();
	}
	public Book saveBook(Book book) {
		return bookrepo.save(book);
	}
	public Book updateBook(Book book) {
		return bookrepo.save(book);
	}
	
	public void deleteBook(Long id) {
		bookrepo.deleteById(id);
	}
	
	public Book findBook(Long id) {
		return bookrepo.findById(id).orElse(null);
	}
}
