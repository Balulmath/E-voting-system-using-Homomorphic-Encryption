/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entry;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vote.VoteDB;

/**
 *
 * @author Sanjeev
 */
@WebServlet(name = "userreg", urlPatterns = {"/userreg"})
public class userreg extends HttpServlet {
    VoteDB db=new VoteDB();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String name=request.getParameter("name");
            String uname=request.getParameter("uname");
            String pass=request.getParameter("pass");
            String emailid=request.getParameter("email");
            String mono=request.getParameter("mono");
            String gen=request.getParameter("g1");
            String age=request.getParameter("age");
            int ag=Integer.parseInt(age);
            Class.forName("com.mysql.jdbc.Driver");
    	    //url = ;
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voteuser","root","root");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from userreg where uname='"+uname+"'");
            if(rs.next())
            {
              response.sendRedirect("userregister.jsp?msg=Already_Exisit");
            }
            else
            {
            PreparedStatement pstm=con.prepareStatement("insert into userreg values(?,?,?,?,?,?,?)");
            pstm.setString(1, uname);
            pstm.setString(2, name);
            pstm.setString(3, pass);
            pstm.setString(4, gen);
            pstm.setInt(5, ag);
            pstm.setString(6, emailid);
            pstm.setString(7, mono);
            int x=pstm.executeUpdate();
            if(x>0)
            {
                response.sendRedirect("userlogin.jsp?msg=RegisteredSuccess");
            }
            else
            {
                response.sendRedirect("userregister.jsp?msg=Already_Exisit");
                
            }
            }
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }}

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
