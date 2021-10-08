package servlet;

import bean.User;
import service.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/RegisterServlet.do")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        user.setUserName(request.getParameter("userName"));
        user.setSex(request.getParameter("sex"));
        user.setPassword(request.getParameter("userPwd"));
        user.setNickName(request.getParameter("nickName"));
        user.setPhone(request.getParameter("phone"));
        user.setEmail(request.getParameter("email"));
        user.setPosition(request.getParameter("position"));
        user.setRegisterDate(new java.sql.Date(new java.util.Date().getTime()));
//        System.out.println(user);
        UserServiceImpl userService = new UserServiceImpl();
        int res = userService.insertUser(user);
        if (res == 0) {
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
