package com.tw.interceptor;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Zlien on 7/27/15.
 */

public class HandlerInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        String currentUser = "";
        Cookie[] cookies = request.getCookies();
        for(Cookie cookie: cookies){
            if(cookie.getName().equals("current_user")){
                currentUser = cookie.getValue();
            }
        }

        if(currentUser.equals("")){

            Cookie cookie = new Cookie("previous_page", request.getRequestURI().substring(5));
            cookie.setPath("/");
            response.addCookie(cookie);

            response.sendRedirect("/web/login");
            return false;
        }else {
            Cookie cookie = new Cookie("previous_page", null);
            cookie.setMaxAge(0);
            cookie.setPath("/");
            response.addCookie(cookie);

            return true;

        }
    }
}
