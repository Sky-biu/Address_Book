package com.member.servlet;

import com.member.Dao.MemberDao;
import com.member.bean.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/selectservlet")
public class selectservlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String Name = request.getParameter("Name");
        MemberDao memberDao = new MemberDao();
        List<Member> memberList1 = memberDao.selectMember(Name);
        request.setAttribute("memberList1", memberList1);
        request.getRequestDispatcher("select.jsp").forward(request, response);
    }

}
