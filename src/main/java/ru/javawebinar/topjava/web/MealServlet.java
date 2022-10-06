package ru.javawebinar.topjava.web;

import ru.javawebinar.topjava.util.UserMealUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MealServlet extends HttpServlet {
    //public static final LoggerWrapper LOG = LoggerWrapper.get(MealServlet.class);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("mealList",
                UserMealUtils.getWithExceeded(UserMealUtils.MEAL_LIST, 2000));
        req.getRequestDispatcher("/mealList.jsp").forward(req, resp);
    }
}
