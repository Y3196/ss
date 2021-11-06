package com.ting.controller;

import com.ting.pojo.Books;
import com.ting.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    @RequestMapping("/allBook")
    public String list(Model model){

        List<Books> list = bookService.queryAllBook();

        model.addAttribute("list",list);
        return "allBook";
    }

    //跳转到增加书籍页面
    @RequestMapping("/toAddBook")
    public String toAddPaper(){
        return "addBook";
    }

    //添加书籍的请求(业务层要调用service层)
    @RequestMapping("/addBook")
    public String addBook(Books books){
        bookService.addBook(books);
        return "redirect:/book/allBook"; //重定向到我们的 @RequestMapping("/allBook")请求
    }

    //跳转到修改页面
    @RequestMapping("/toUpdate")
    public String toUpdatePaper(int id,Model model){
        Books books = bookService.queryBookById(id);

        model.addAttribute("QBook",books);
        return "updateBook";
    }

    //修改书籍
    @RequestMapping("/updateBook")
    public String updateBook(Books books){
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }

    //删除书籍
    @RequestMapping("/deleteBook/{bookId}")
    public String deleteBook(@PathVariable("bookId") int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    //查询书籍
    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName,Model model){
        Books books = bookService.queryBookName(queryBookName);

        List<Books> list = new ArrayList<Books>();

        list.add(books);

        if (books == null){
            list = bookService.queryAllBook();
            model.addAttribute("error","未查询到");
        }
        model.addAttribute("list",list);

        return "allBook";
    }
}

