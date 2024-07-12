package main;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/peliculas")
public class PeliculaServlet extends HttpServlet {

    private ObjectMapper objectMapper = new ObjectMapper();
    private PeliculasDAO peliculaDAO = new PeliculasDAO();

    protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        
        List<Pelicula> peliculas = peliculaDAO.obtenerTodasLasPeliculas();
        objectMapper.writeValue(response.getWriter(), peliculas);
        
    }
    
}

