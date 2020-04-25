import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet(name = "ViewAdsServlet", urlPatterns = "/ads")
public class ViewAdsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // change content that's sent to the user, and send the updated data out to user view
        Ads siteAds = DaoFactory.getAdsDao();
        ArrayList<Ad> allSiteAds = (ArrayList<Ad>) siteAds.all();
        //now we have all the site Ads, and we can send them to the JSP template

        //setAttribute (send stuff into the JSP template)
        request.setAttribute("allTheAds", allSiteAds);

        //getRequestDispatcher (which template do I load, when user goes to /ads in my server?)
        request.getRequestDispatcher("ads/index.jsp").forward(request, response);

    }
}

