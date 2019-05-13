package servletExample;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zubiri.matches.*;

//@WebServlet("/show")
public class ShowTeams extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String teamName = req.getParameter("selected");
		MatchesConnection mconn = new MatchesConnection();
		try {
			mconn.connect();
			FootballTeam team = mconn.getTeam(teamName);
			req.setAttribute("team", team);
			req.getRequestDispatcher("show.jsp").forward(req, resp);
			mconn.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} 
	}
}
