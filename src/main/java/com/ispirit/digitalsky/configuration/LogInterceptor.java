package com.ispirit.digitalsky.configuration;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import java.nio.charset.StandardCharsets;

public class LogInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {

        String requestBody = IOUtils.toString(request.getInputStream(), StandardCharsets.UTF_8);

        long startTime = System.currentTimeMillis();
        System.out.println("\n-------- LogInterception.preHandle --- ");
        System.out.println("Request URL: " + request.getRequestURL());
        System.out.println("Request Body: " + requestBody);
        System.out.println("Start Time: " + System.currentTimeMillis());

        request.setAttribute("startTime", startTime);
        return true;
    }

//    @Override
//    public void postHandle(HttpServletRequest request, HttpServletResponse response, //
//                           Object handler, ModelAndView modelAndView) throws Exception {
//
//        System.out.println("\n-------- LogInterception.postHandle --- ");
//        System.out.println("Request URL: " + request.getRequestURL());
//
//        // You can add attributes in the modelAndView
//        // and use that in the view page
//    }
//
//    @Override
//    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, //
//                                Object handler, Exception ex) throws Exception {
//        System.out.println("\n-------- LogInterception.afterCompletion --- ");
//
//        long startTime = (Long) request.getAttribute("startTime");
//        long endTime = System.currentTimeMillis();
//        System.out.println("Request URL: " + request.getRequestURL());
//        System.out.println("End Time: " + endTime);
//
//        System.out.println("Time Taken: " + (endTime - startTime));
//    }

}