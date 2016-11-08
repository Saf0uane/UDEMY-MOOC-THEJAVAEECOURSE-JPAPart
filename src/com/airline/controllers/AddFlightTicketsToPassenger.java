package com.airline.controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.service.PassengerService;

/**
 * Servlet implementation class AddfLIGHTtICKETStOpASSENGER
 */
@WebServlet( "/AddFlightTicketsToPassenger" )
public class AddFlightTicketsToPassenger extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @EJB
    PassengerService          ps;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFlightTicketsToPassenger() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {
        // TODO Auto-generated method stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {

        String fid = request.getParameter( "fid" );
        String pid = request.getParameter( "pid" );

        ps.addFlightTicketsToPassenger( fid, pid );

        response.sendRedirect( "Passengers" );

    }

}
