package com.demo.servlets.admin;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entities.Bacsi;
import com.demo.entities.Khoa;
import com.demo.models.BacSiModel;
import com.demo.models.BenhNhanModel;
import com.demo.models.KhoaModel;


@WebServlet("/admin")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null) {
			doGet_ListBacSi(request, response);
		} else {
			if (action.equalsIgnoreCase("listbacsi")) {
				doGet_ListBacSi(request, response);
			} else if (action.equalsIgnoreCase("listkhoa")) {
				doGet_ListKhoa(request, response);
			} else if (action.equalsIgnoreCase("addbacsi")) {
				doGet_AddBacSi(request, response);
			} else if (action.equalsIgnoreCase("addkhoa")) {
				doGet_AddKhoa(request, response);
			}else if (action.equalsIgnoreCase("editKhoa")) {
				doGet_EditKhoa(request, response);
			}else if (action.equalsIgnoreCase("deleteKhoa")) {
				doGet_DeleteKhoa(request, response);
			}else if (action.equalsIgnoreCase("deleteBs")) {
				doGet_Deletebs(request, response);
			}else if (action.equalsIgnoreCase("editBs")) {
				doGet_goEditbs(request, response);
			}else if (action.equalsIgnoreCase("lichkham")) {
				doGet_goLichkham(request, response);
			}else if (action.equalsIgnoreCase("lichsu")) {
				doGet_golsubenhnhan(request, response);
			}else if (action.equalsIgnoreCase("listbenhnhan")) {
				doGet_golistbn(request, response);
			}


		}
	}
	
	protected void doGet_golistbn(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BenhNhanModel bn= new BenhNhanModel();
		request.setAttribute("benhnhans", bn.findAll());
		request.getRequestDispatcher("WEB-INF/views/admin/listbenhnhan.jsp").forward(request, response);
	}
	protected void doGet_golsubenhnhan(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BenhNhanModel bn = new BenhNhanModel();
		if (request.getParameter("mabn") != null) {
			int mabn = Integer.parseInt(request.getParameter("mabn"));
			request.setAttribute("lichkhams", bn.findlichkhamcuabenhnhan(mabn));
		}

		request.getRequestDispatcher("WEB-INF/views/admin/lichsu.jsp").forward(request, response);
	}
	
	protected void doGet_goLichkham(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BacSiModel bacSiModel = new BacSiModel();
		if(request.getParameter("mabs") != null) {
			int mabs = Integer.parseInt(request.getParameter("mabs"));
			request.setAttribute("lichkhams", bacSiModel.findlichkham(mabs));
		}
		request.getRequestDispatcher("WEB-INF/views/admin/lichkham.jsp").forward(request, response);
	}
	
	protected void doGet_goEditbs(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		BacSiModel bacSiModel = new BacSiModel();
		if(request.getParameter("mabs") != null) {
			int mabs = Integer.parseInt(request.getParameter("mabs"));
			request.setAttribute("bs", bacSiModel.find(mabs));
			
			KhoaModel khoaModel = new KhoaModel();
			request.setAttribute("khoas", khoaModel.findAll());
		}
		request.getRequestDispatcher("WEB-INF/views/admin/editbs.jsp").forward(request, response);
	}
	
	protected void doGet_Deletebs(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
			BacSiModel bacSiModel = new BacSiModel();
			int mabs = Integer.parseInt(request.getParameter("mabs"));
			Bacsi bacsi = bacSiModel.find(mabs);
			bacSiModel.delete(bacsi);

		response.sendRedirect("admin?action=listbacsi");
	}
	
	protected void doGet_DeleteKhoa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		KhoaModel khoaModel = new KhoaModel();

			int makhoa = Integer.parseInt(request.getParameter("makhoa"));
			Khoa khoa = khoaModel.find(makhoa);
			khoaModel.delete(khoa);

		response.sendRedirect("admin?action=listkhoa");
	}
	
	protected void doGet_EditKhoa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		KhoaModel khoaModel = new KhoaModel();
		if(request.getParameter("makhoa") != null) {
			int makhoa = Integer.parseInt(request.getParameter("makhoa"));
			request.setAttribute("khoa", khoaModel.find(makhoa));
		}
		request.getRequestDispatcher("WEB-INF/views/admin/editKhoa.jsp").forward(request, response);
	}
	protected void doGet_AddKhoa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("WEB-INF/views/admin/addKhoa.jsp").forward(request, response);
	}

	protected void doGet_AddBacSi(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		KhoaModel khoaModel = new KhoaModel();
		request.setAttribute("khoas", khoaModel.findAll());
		request.getRequestDispatcher("WEB-INF/views/admin/addBacSi.jsp").forward(request, response);
	}

	protected void doGet_ListKhoa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		KhoaModel khoaModel = new KhoaModel();
		request.setAttribute("khoas", khoaModel.findAll());
		request.getRequestDispatcher("WEB-INF/views/admin/listkhoa.jsp").forward(request, response);
	}

	protected void doGet_ListBacSi(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BacSiModel bacSiModel = new BacSiModel();
		request.setAttribute("bacsis", bacSiModel.findAll());
		request.getRequestDispatcher("WEB-INF/views/admin/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("addkhoa")) {
			doPostAddKhoa(request, response);
		}else {
			if(action.equalsIgnoreCase("editKhoa")) {
				doPostEditKhoa(request, response);
			}else if (action.equalsIgnoreCase("addbs")) {
				doPost_Addbs(request, response);
			}else if (action.equalsIgnoreCase("editBs")) {
				doPost_Editbs(request, response);
			}else if (action.equalsIgnoreCase("searchbydate")) {
				doPost_SearchByDates(request, response);
			}
		}
	}
	
	protected void doPost_SearchByDates(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
			Date from = simpleDateFormat.parse(request.getParameter("from"));
			Date to = simpleDateFormat.parse(request.getParameter("to"));
			int mabs= Integer.parseInt(request.getParameter("mabs"));
			BacSiModel bs = new BacSiModel();
			request.setAttribute("from", request.getParameter("from"));
			request.setAttribute("to", request.getParameter("to"));
			request.setAttribute("lichkhams", bs.findbydaterange(from, to, mabs));
			request.getRequestDispatcher("WEB-INF/views/admin/lichkham.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	protected void doPost_Editbs(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			BacSiModel bacSiModel = new BacSiModel();
			Khoa khoa = new Khoa();
			int mabs = Integer.parseInt(request.getParameter("mabs"));
			Bacsi bacsi = bacSiModel.find(mabs);
			khoa.setMakhoa(Integer.parseInt(request.getParameter("khoa")));
			bacsi.setKhoa(khoa);
			bacsi.setTenbs(request.getParameter("tenbs"));
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			bacsi.setNgaysinh(dateFormat.parse(request.getParameter("ngaysinh")));
			if(bacSiModel.update(bacsi)) {
				response.sendRedirect("admin?action=listbacsi");
			} else {
				throw new Exception();
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "fail");
			KhoaModel khoaModel = new KhoaModel();
			request.setAttribute("khoas", khoaModel.findAll());
			request.getRequestDispatcher("WEB-INF/views/admin/editbs.jsp").forward(request, response);
		}
	}
	
	protected void doPost_Addbs(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			BacSiModel bacSiModel = new BacSiModel();
			Khoa khoa = new Khoa();
			Bacsi bacsi = new Bacsi();
			khoa.setMakhoa(Integer.parseInt(request.getParameter("khoa")));
			bacsi.setKhoa(khoa);
			bacsi.setTenbs(request.getParameter("tenbs"));
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			bacsi.setNgaysinh(dateFormat.parse(request.getParameter("ngaysinh")));
			if(bacSiModel.create(bacsi)) {
				response.sendRedirect("admin?action=listbacsi");
			} else {
				throw new Exception();
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "fail");
			KhoaModel khoaModel = new KhoaModel();
			request.setAttribute("khoas", khoaModel.findAll());
			request.getRequestDispatcher("WEB-INF/views/admin/addBacSi.jsp").forward(request, response);
		}
		
		
	}
	
	protected void doPostEditKhoa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		KhoaModel khoaModel = new KhoaModel();
		int makhoa = Integer.parseInt(request.getParameter("makhoa"));
		Khoa khoa = khoaModel.find(makhoa);
		khoa.setTenkhoa(request.getParameter("tenkhoa"));
		khoaModel.update(khoa);
		
		response.sendRedirect("admin?action=listkhoa");
	}
	
	protected void doPostAddKhoa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		KhoaModel khoaModel = new KhoaModel();
		Khoa khoa = new Khoa();
		khoa.setTenkhoa(request.getParameter("tenkhoa"));
		khoaModel.create(khoa);
		
		response.sendRedirect("admin?action=listkhoa");
	}

}
