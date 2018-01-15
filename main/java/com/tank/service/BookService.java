package com.tank.service;

import java.util.*;
import com.tank.model.Book;

public interface BookService {
    List<Book> getAllBooks();
    Book getBookByISBN(String ISBN);
    List<Book> getBookByStar();
    List<Book> searchBook(String author,String title,String ISBN);
    //待添加
}
