package com.ting.controller;

import com.ting.pojo.User;
import com.ting.service.UserService;
import com.ting.utils.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping("/goLogin")
    public String goLogin() {
        return "login";
    }

    @RequestMapping("/tologin")
    public String userLogin(String username, String password, HttpSession session, Model model) {

        ModelAndView mv = new ModelAndView();

        User loginUser = userService.loginUser(username, password);

        if (loginUser == null) {
            model.addAttribute("msg", "用户名或者密码错误");
            return "login";
        } else {
            session.setAttribute("user", loginUser);
            return "main";
        }
    }

    // 这个情况是index.jsp有关的
    @RequestMapping("/toregister")
    public String toregister() {
        return "register";  // 这种是与我们自己写的jsp相关
    }

    @RequestMapping("/register")
    public String registerUser(User user, HttpSession session, Model model) {
        int i = userService.addUser(user);
        if (i > 0) {
            model.addAttribute("msg", "注册成功，请登录");
            return "login";
        }
        model.addAttribute("msg", "注册失败");
        return "failure";
    }

    @RequestMapping("/update")
    public String uppsw(){
        return "updatepwd";
    }

    @RequestMapping("/update.do")
    @ResponseBody
    public Msg update(String username, String password){

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        System.out.println("-------------------->"+user);

        int update = userService.update(user);

        if (update == 1){
            return Msg.success();
        }else {
            return Msg.file();
        }
    }
}
