package Controladores;


import Modelos.basededatos;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RespuestaLogin extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
       String respuesta;
        try (PrintWriter out = response.getWriter()) {
      
        response.setContentType("text/html;charset=UTF-8");
        String control,codigo, email,pass,nombre, apellido, dpi,nit; 
        control = request.getParameter("control");
    
        
         
        
       
         if(control.equals("INSERT")){
              basededatos bs = new basededatos();
                codigo = request.getParameter("codigo");
                email = request.getParameter("email");
                pass = request.getParameter("pass");
                nombre = request.getParameter("nombre");
                apellido = request.getParameter("apellido");
                dpi = request.getParameter("dpi");
                nit = request.getParameter("nit");
                
             respuesta=(bs.insert(codigo, email, pass,nombre,apellido,dpi,nit));
              out.append(respuesta);
               }else{
  
               }
                
      
        }
    }

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