import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servlet", urlPatterns = "/tran")
public class Servlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response)
            throws javax.servlet.ServletException, IOException {
        Dict[] dicts =new Dict[4];
        dicts[1]=new Dict("hello", "xin chao");
        dicts[2]=new Dict("how","the nao");
        dicts[0]=new Dict("what","cai gi");
        dicts[3]=new Dict("apple","tao");
        boolean notfound=true;
        String eng= request.getParameter("Eng");
        PrintWriter writer=response.getWriter();
        writer.println("<html>");
        for (Dict dict:dicts) {
            if (dict.getEn().equals(eng)){
                writer.println(dict.getEn()+ " = "+ dict.getVi());
                notfound=false;
                break;
            }

        }
        if (notfound){writer.println("Not Found");}
        writer.println("</html>");


    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response)
            throws javax.servlet.ServletException, IOException {

    }
}
class Dict {
    private String en ;
    private String vi ;

    Dict(String en, String vi) {
        this.en = en;
        this.vi = vi;
    }

    public String getEn() {
        return en;
    }

    public String getVi() {
        return vi;
    }
}