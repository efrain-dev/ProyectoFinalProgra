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
          Writer ajaxSalida =  response.getWriter(); 
          StringBuffer respuesta =  new StringBuffer(); 
        response.setContentType("text/html;charset=UTF-8");
        String control,codigo, email,pass,nombre, apellido, dpi,nit; 
        control = request.getParameter("control");
        codigo = request.getParameter("codigo");
        email = request.getParameter("email");
        pass = request.getParameter("pass");
        nombre = request.getParameter("nombre");
        apellido = request.getParameter("apellido");
        dpi = request.getParameter("dpi");
        nit = request.getParameter("nit");
        basededatos bs = new basededatos();
         if(control.equals("INSERT")){
              bs.insert(codigo, email, pass,nombre,apellido,dpi,nit, respuesta);
                respuesta.append("1");
               }else{
                      respuesta.append("0");//dato no insertado
               }
                
            ajaxSalida.write(respuesta.toString());
            ajaxSalida.flush();
            ajaxSalida.close();     
       
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RespuestaLogin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RespuestaLogin at " +nombre + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
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
