package com.softeem.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.softeem.dao.AnnouncementDAO;
import com.softeem.dao.ArticleDAO;
import com.softeem.dao.BaseDAO;
import com.softeem.dao.CategoryDAO;
import com.softeem.dao.CommDAO;
import com.softeem.dao.LinkDAO;
import com.softeem.dao.LoginDAO;
import com.softeem.dao.UserDAO;
import com.softeem.dto.Announcement;
import com.softeem.dto.Article;
import com.softeem.dto.Category;
import com.softeem.dto.Comm;
import com.softeem.dto.Link;
import com.softeem.dto.Login;
import com.softeem.dto.PageBean;
import com.softeem.dto.User;
import com.softeem.service.PaginationService;


@WebServlet("/list")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ListServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		switch(flag){
		case "category":
			listCategory(request,response);
			break;
		case "category-type":
			listCategoryType(request,response);
			break;
		case "flink":
			listFinks(request,response);
			break;
		case "article":
			listArticle(request,response);
			break;
		case "user":
			listUser(request,response);
			break;
		case "notice":
			listNotice(request,response);
			break;
		case "loadInfo":
			listloadInfo(request,response);
			break;
		case "loadInfoAll":
			listAllLoadInfo(request,response);
			break;
		case "comm":
			listComm(request,response);
			break;
		case "fronNotice":
			listNotice(request,response);
			break;
		default:
			break;
		}
	}


	private void listComm(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		int cp = request.getParameter("cp") == null? 0:Integer.parseInt(request.getParameter("cp"));
		PageBean<Comm> bean = new PageBean<>();
		bean.setCurrentPage(cp);
		bean.setPageSize(5);
		
		PaginationService<Comm> paging = new PaginationService<>(new CommDAO());
		bean = paging.paging(bean);
		
		String json = JSON.toJSONString(bean);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
	}


	private void listAllLoadInfo(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		int cp = request.getParameter("cp") == null? 0:Integer.parseInt(request.getParameter("cp"));
		PageBean<Login> bean = new PageBean<>();
		bean.setCurrentPage(cp);
		bean.setPageSize(7);
		
		PaginationService<Login> paging = new PaginationService<>(new LoginDAO());
		bean = paging.paging(bean);
		String json = JSON.toJSONString(bean);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
	}


	private void listloadInfo(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		int cp = request.getParameter("cp") == null? 0:Integer.parseInt(request.getParameter("cp"));
		PageBean<Login> bean = new PageBean<>();
		bean.setCurrentPage(cp);
		bean.setPageSize(5);
		
		PaginationService<Login> paging = new PaginationService<>(new LoginDAO());
		bean = paging.pagingById(bean, Integer.parseInt(request.getParameter("mid")));
		
		String json = JSON.toJSONString(bean);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
	}


	private void listNotice(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		int cp = request.getParameter("cp") == null? 0:Integer.parseInt(request.getParameter("cp"));
		PageBean<Announcement> bean = new PageBean<>();
		bean.setCurrentPage(cp);
		bean.setPageSize(5);
		
		PaginationService<Announcement> paging = new PaginationService<>(new AnnouncementDAO());
		bean = paging.paging(bean);
		
		String json = JSON.toJSONString(bean);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
	}


	private void listUser(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		int cp = request.getParameter("cp") == null? 0:Integer.parseInt(request.getParameter("cp"));
		PageBean<User> bean = new PageBean<>();
		bean.setCurrentPage(cp);
		bean.setPageSize(7);
		
		PaginationService<User> paging = new PaginationService<>(new UserDAO());
		bean = paging.paging(bean);
		
		String json = JSON.toJSONString(bean);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
	}


	private void listArticle(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int cp = request.getParameter("cp") == null? 0:Integer.parseInt(request.getParameter("cp"));
		PageBean<Article> bean = new PageBean<>();
		bean.setCurrentPage(cp);
		bean.setPageSize(5);
		
		PaginationService<Article> paging = new PaginationService<>(new ArticleDAO());
		bean = paging.paging(bean);
		
		String json = JSON.toJSONString(bean);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
	}


	private void listFinks(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		int cp = request.getParameter("cp") == null? 0:Integer.parseInt(request.getParameter("cp"));
		PageBean<Link> bean = new PageBean<>();
		bean.setCurrentPage(cp);
		bean.setPageSize(5);
		
		PaginationService<Link> paging = new PaginationService<>(new LinkDAO());
		bean = paging.paging(bean);
		
		String json = JSON.toJSONString(bean);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
	}


	private void listCategoryType(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		BaseDAO<Category> dao = new CategoryDAO();
		Category c = new Category();
		c.setPid(0);
		List<Category> list = dao.findByProperty(c);
		
		String json = JSON.toJSONString(list);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
	}


	/**
	 * �첽ˢ��
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void listCategory(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		int cp = request.getParameter("cp") == null? 0:Integer.parseInt(request.getParameter("cp"));
//		System.out.println(cp);
		PageBean<Category> bean = new PageBean<>();
		bean.setCurrentPage(cp);
		bean.setPageSize(5);
		
		PaginationService<Category> paging = new PaginationService<>(new CategoryDAO());
		bean = paging.paging(bean);
		
		String json = JSON.toJSONString(bean);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
	
	}

}
