package com.tank.controller;

import com.tank.model.*;
import com.tank.service.BookService;
import com.tank.service.UserService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.util.List;

@Controller
@RequestMapping("/")
public class MainController {

    public String index() {
        return "jsp/index";
    }

    @Resource
    private UserService userService;
    @Resource
    private BookService bookService;

    @RequestMapping("/showUser")
    public String showUser(HttpServletRequest request, Model model){
        List<User> userList = userService.getAllUser();
        model.addAttribute("userList",userList);

        return "showUser";
    }
    @RequestMapping("/index")
    public String showIndex(HttpServletRequest request, Model model){
        List<Book> bookList = bookService.getBookByStar();
        model.addAttribute("booklist",bookList);
        return "index";
    }
    @RequestMapping("/showBook")
    public String showBook(HttpServletRequest request, Model model){
        List<Book> bookList = bookService.getAllBooks();
        model.addAttribute("booklist",bookList);

        return "showBook";
    }
    @RequestMapping("/bookInfo")
    public String showBookInfo(HttpServletRequest request, Model model){
        String ISBN="";
        ISBN=request.getParameter("ISBN");
        if(ISBN==null)
        {
            model.addAttribute("isExist",0);
        }
        else {
            Book book = bookService.getBookByISBN(ISBN);
            if(book==null)
                model.addAttribute("isExist",0);
            else {
                model.addAttribute("isExist", 1);
                model.addAttribute("book", book);
            }
        }

        return "bookInfo";
    }

    @RequestMapping("/searchBook")
    public String searchBook(HttpServletRequest request, Model model){
        String author ="";
        String title="";
        String ISBN="";
        author=request.getParameter("author");
        title=request.getParameter("title");
        ISBN=request.getParameter("ISBN");
        if(author==null||title==null||ISBN==null)
            model.addAttribute("isExist",0);
        else{
            if(author.equals("")&&title.equals("")&&ISBN.equals(""))
                model.addAttribute("isExist",0);
            else{
                author="%"+author+"%";
                title="%"+title+"%";
                ISBN="%"+ISBN+"%";
                System.out.print(author+"/"+title+"/"+ISBN);
                List<Book> bookList=bookService.searchBook(author,title,ISBN);
                if(bookList.size()==0)
                    model.addAttribute("isExist",0);
                else{
                    model.addAttribute("isExist",1);
                    model.addAttribute("booklist",bookList);
                }
            }
        }



        return "searchBook";
    }
}