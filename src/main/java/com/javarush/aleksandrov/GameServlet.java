package com.javarush.aleksandrov;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


@WebServlet("/game")
public class GameServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        if (action == null) {
            request.setAttribute("action", "start");
            request.getRequestDispatcher("WEB-INF/views/start.jsp").forward(request, response);
            return;
        }
        if ("start".equals(action)) {
            session.setAttribute("gameStarted", true);
            session.setAttribute("gameCount", 0);
            String name = request.getParameter("name");
            if (name != null) session.setAttribute("name", name);
            request.getRequestDispatcher("WEB-INF/views/question1.jsp").forward(request, response);
            return;
        }

        if ("question1".equals(action)) {
            String answer = request.getParameter("answer");

            if ("yes".equals(answer)) {
                session.setAttribute("gameCount", 1);
                request.getRequestDispatcher("WEB-INF/views/question2.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("WEB-INF/views/lose.jsp").forward(request, response);
            }
            return;
        }
        if ("question2".equals(action)) {
            String answer = request.getParameter("answer");

            if ("yes".equals(answer)) {
                session.setAttribute("gameCount", 2);
                request.getRequestDispatcher("WEB-INF/views/question3.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("WEB-INF/views/lose.jsp").forward(request, response);
            }
            return;
        }

        if ("question3".equals(action)) {
            String answer = request.getParameter("answer");

            if ("yes".equals(answer)) {
                session.setAttribute("gameCount", 3);
                request.getRequestDispatcher("WEB-INF/views/win.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("WEB-INF/views/lose.jsp").forward(request, response);
            }
            return;
        }

        if ("restart".equals(action)) {
            session.setAttribute("gameStarted", true);
            session.setAttribute("gameCount", 0);
            request.getRequestDispatcher("WEB-INF/views/question1.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}