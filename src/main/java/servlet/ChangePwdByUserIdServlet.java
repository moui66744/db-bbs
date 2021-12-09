package servlet;

import bean.User;
import service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ChangePwdByUserIdServlet.do")
public class ChangePwdByUserIdServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pwd = request.getParameter("newPwd");
        Object user1 = request.getSession().getAttribute("user");
        User user = (User) user1;
        if (user == null){
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            int userId = user.getUserId();

            UserServiceImpl userService = new UserServiceImpl();
            int res = userService.ChangePwd(userId, pwd);

            response.getWriter().print(res);
            //request.getRequestDispatcher("changeEma.jsp").forward(request,response);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
