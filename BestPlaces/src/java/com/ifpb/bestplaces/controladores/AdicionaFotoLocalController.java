
package com.ifpb.bestplaces.controladores;

import com.ifpb.bestplaces.daos.FotoDAO;
import com.ifpb.bestplaces.entidades.Foto;
import com.ifpb.bestplaces.interfaces.ICommand;
import com.ifpb.bestplaces.interfaces.IFileManager;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdicionaFotoLocalController implements ICommand, IFileManager{

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse res) throws SQLException, ClassNotFoundException, IOException, ServletException {
        
       FotoDAO fotoDAO = new FotoDAO();
       Foto f = new Foto();
       int id = Integer.parseInt(req.getParameter("id"));
       f.setId(id);
       
       String foto = uploadFile("fotosLocal/" + req.getParameter("foto"), req, 
       req.getPart("fotoLocal"), req.getParameter("foto")+fotoDAO.interatorFotos_Local("fotos_local"));
       f.setFoto(foto);
       
       if(fotoDAO.insert(f, "fotos_local")){
           res.sendRedirect("local.jsp");
       }else{
           res.sendRedirect("erro.jsp");
       }
                
    }
       
}
