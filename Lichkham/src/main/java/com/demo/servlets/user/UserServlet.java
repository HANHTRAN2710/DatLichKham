package com.demo.servlets.user;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demo.entities.Bacsi;
import com.demo.entities.Benhnhan;
import com.demo.entities.Khoa;
import com.demo.entities.Lichkham;
import com.demo.models.BacSiModel;
import com.demo.models.BenhNhanModel;
import com.demo.models.KhoaModel;

@WebServlet("/user")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		if (action == null) {
			doGet_ListBacSi(request, response);
		} else {
			if (action.equalsIgnoreCase("abc")) {
				doGet_List(request, response);
			} else if(action.equalsIgnoreCase("khoa")) {
				doGet_ListKhoa(request, response);
			}else if(action.equalsIgnoreCase("listbs")) {
				doGet_Listbs(request, response);
			}else if(action.equalsIgnoreCase("benhnhan")) {
				doGet_ListBenhnhan(request, response);
			}else if(action.equalsIgnoreCase("dangnhaps")) {
				doGet_Dangnhap(request, response);
			}else if(action.equalsIgnoreCase("dichvu")) {
				doGet_Dichvu(request, response);
			}else if(action.equalsIgnoreCase("login")) {
				doGet_Login(request, response);
			}else if(action.equalsIgnoreCase("lichkham")) {
				doGet_Lichkham(request, response);
				}else if(action.equalsIgnoreCase("datlich")) {
					doGet_Datlich(request, response);
					}

		}
		
	}
	protected void doGet_Datlich(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BacSiModel bacSiModel = new BacSiModel();
		
		request.setAttribute("bacsis", bacSiModel.findAll());
		request.getRequestDispatcher("WEB-INF/views/user/datlich.jsp").forward(request, response);
	}
	protected void doGet_Lichkham(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BenhNhanModel bn = new BenhNhanModel();
		int mabn = Integer.parseInt(request.getParameter("mabn"));
		request.setAttribute("bns", bn.findlichkhamcuabenhnhan(mabn));
		request.getRequestDispatcher("WEB-INF/views/user/lisukham.jsp").forward(request, response);
	}
	protected void doGet_Login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("WEB-INF/views/user/login.jsp").forward(request, response);
	}
	protected void doGet_Dichvu(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("WEB-INF/views/user/dichvu.jsp").forward(request, response);
	}
	protected void doGet_Dangnhap(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("WEB-INF/views/user/dangnhap.jsp").forward(request, response);
	}
	protected void doGet_ListBenhnhan(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BenhNhanModel benhNhanModel=new BenhNhanModel();
		
		request.setAttribute("benhnhans", benhNhanModel.findAll());
		request.getRequestDispatcher("WEB-INF/views/user/benhnhan.jsp").forward(request, response);
	}
	//khoa hien thị cac bác sĩ
	protected void doGet_Listbs(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BenhNhanModel bn = new BenhNhanModel();
		int makhoa = Integer.parseInt(request.getParameter("makhoa"));
		request.setAttribute("bacsis", bn.findbs(makhoa));
		request.getRequestDispatcher("WEB-INF/views/user/khoabs.jsp").forward(request, response);
	}
	protected void doGet_ListKhoa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		KhoaModel khoaModel = new KhoaModel();
		
		request.setAttribute("khoas", khoaModel.findAll());
		request.getRequestDispatcher("WEB-INF/views/user/khoa.jsp").forward(request, response);
	}

	protected void doGet_List(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		KhoaModel khoaModel = new KhoaModel();
		request.setAttribute("khoas", khoaModel.findAll());
		request.getRequestDispatcher("WEB-INF/views/user/listbenhnhan.jsp").forward(request, response);
	}

	protected void doGet_ListBacSi(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BacSiModel bacSiModel = new BacSiModel();
		request.setAttribute("bacsis", bacSiModel.findAll());
		request.getRequestDispatcher("WEB-INF/views/user/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action.equalsIgnoreCase("dangnhap")) {
			doPost_DangNhap(request, response);
		} else {
			if (action.equalsIgnoreCase("editdangnhap")) {
				doPostEditDangNhap(request, response);
			}else if (action.equalsIgnoreCase("dichvus")) {
				doPost_Dichvu(request, response);
			}else if (action.equalsIgnoreCase("login")) {
				doPost_Login(request, response);
			}else if (action.equalsIgnoreCase("datlich")) {
				doPost_Datlich(request, response);
			}
		}
	}
	protected void doPost_Datlich(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			BenhNhanModel benhNhanModel = new BenhNhanModel();
			Lichkham lichkham = new Lichkham();
			Benhnhan benhnhan = new Benhnhan();

			benhnhan.setMabn(Integer.parseInt(request.getParameter("mabn")));
			lichkham.setBenhnhan(benhnhan);

			Bacsi bacsi = new Bacsi();
			bacsi.setMabs(Integer.parseInt(request.getParameter("mabs")));
			lichkham.setBacsi(bacsi);
			SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
			lichkham.setNgaykham(dateFormat.parse(request.getParameter("ngaykham")));
			lichkham.setNoidung(request.getParameter("noidung"));
			if (benhNhanModel.createlichkham(lichkham)) {
				response.sendRedirect("user");
			} else {
				throw new Exception();
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "fail");
			request.getRequestDispatcher("user?action=datlich").forward(request, response);
		}
	}
	protected void doPost_Login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("tenbn").trim();
		String password = request.getParameter("password").trim();
		BenhNhanModel bn = new BenhNhanModel();
		if (bn.login(username, password) != null) {
			HttpSession session = request.getSession();
			Benhnhan benhnhan = bn.login(username, password);
			session.setAttribute("bn", benhnhan);
			response.sendRedirect("user");
		} else {
			
			request.getRequestDispatcher("WEB-INF/views/user/login.jsp").forward(request, response);
		}
	}

	
	///dich vu dat lich cua benh nhan , chua xong 
	
	protected void doPost_Dichvu(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		

		try {
			
			BacSiModel bs = new BacSiModel();
			Bacsi bacsi = new Bacsi();
			Benhnhan	benhnhan = new Benhnhan();
			Lichkham lk = new Lichkham();
			benhnhan.setMabn(Integer.parseInt(request.getParameter("mabn")));
			
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			
			lk.setNgaykham(dateFormat.parse(request.getParameter("ngaykham")));
			lk.setNoidung(request.getParameter("noidung"));
			
			bacsi.setTenbs(request.getParameter("tenbs"));
			bacsi.setMabs(Integer.parseInt(request.getParameter("mabs")));
			bs.create(bacsi);
			response.sendRedirect("user?action=dichvus");
			
		} catch (Exception e ) {
			e.printStackTrace();
			e.printStackTrace();
			request.setAttribute("msg", "fail");
			KhoaModel khoaModel = new KhoaModel();
			request.setAttribute("khoas", khoaModel.findAll());
			request.getRequestDispatcher("WEB-INF/views/admin/editBacSi.jsp").forward(request, response);
		}
		

		
		
	}
	protected void doPostEditDangNhap(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		KhoaModel khoaModel = new KhoaModel();

		response.sendRedirect("admin?action=listkhoa");
	}
	protected void doPost_DangNhap(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			BenhNhanModel bn = new BenhNhanModel();
			Benhnhan benhnhan = new Benhnhan();
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			benhnhan.setNgaysinh(dateFormat.parse(request.getParameter("ngaysinh")));
			benhnhan.setTenbn(request.getParameter("tenbn"));
			benhnhan.setGioitinh(request.getParameter("gioitinh"));
			benhnhan.setUsername(request.getParameter("username"));
			benhnhan.setPassword(request.getParameter("password"));
			bn.create(benhnhan);
			response.sendRedirect("user");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "fail");
			
			request.getRequestDispatcher("WEB-INF/views/user/dangnhap.jsp").forward(request, response);
		}

	}
	
}



