package com.tank.dao;

import com.tank.model.Book;

import org.apache.ibatis.annotations.Param;

import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by hzxiongtiankai on 2017/3/5.
 */

@Repository
public interface BookDao {

    Book selectBookByISBN(@Param("ISBN") String ISBN);

    List<Book> selectAllBook();

    List<Book> selectBookByStar();

    List<Book> searchBook(@Param("author")String author, @Param("title")String title, @Param("ISBN")String ISBN);
}