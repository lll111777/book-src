package com.tank.service.impl;

import com.tank.model.Book;

import com.tank.dao.BookDao;

import com.tank.service.BookService;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by hzxiongtiankai on 2017/3/5.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class BookServiceImpl implements BookService {

    @Resource
    private BookDao bookDao;

    public List<Book> getAllBooks(){
        return bookDao.selectAllBook();
    }
    public Book getBookByISBN(String ISBN)
    {
        return bookDao.selectBookByISBN(ISBN);
    }
    public List<Book> getBookByStar()
    {
        return bookDao.selectBookByStar();
    }

    public List<Book> searchBook(String author, String title, String ISBN) {
        return bookDao.searchBook(author, title, ISBN);
    }


}