   package com.kgate.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kgate.entity.User;
import com.kgate.repository.CollegeRepository;
import com.kgate.view.ExcelUserListReportView;
import com.kgate.view.PdfUserListReportView;

@Controller
@RequestMapping(value="/")
public class ReportController 
{
	@Autowired
	CollegeRepository clgrepo;
	
	@RequestMapping(value="/report", method=RequestMethod.GET)
	public ModelAndView userListReport(HttpServletRequest req,HttpServletResponse res)
	{
		System.out.println("userListReport start --->");
		String typeReport=req.getParameter("type");
		
		List<User> list=new ArrayList<User>();
		
		try {
			System.out.println("userListReport ####### --->");
			list.add(new User(1,"name 1","usertype 1","email 1","password 1"));
			list.add(new User(2,"name 2","usertype 2","email 2","password 2"));
			list.add(new User(3,"name 3","usertype 3","email 3","password 3"));
			list.add(new User(4,"name 4","usertype 4","email 4","password 4"));
			list.add(new User(5,"name 5","usertype 5","email 5","password 5"));
		
		if(typeReport!= null && typeReport.equals("xls"))
		{
			System.out.println("userListReport start :: xls call ---> " );
			return new ModelAndView(new ExcelUserListReportView(),"userList",list);
		}
		else if(typeReport!= null && typeReport.equals("pdf"))
		{
			System.out.println("userListReport start :: pdf call ---> " );
			return new ModelAndView(new PdfUserListReportView(),"userList",list);

		}
		
		System.out.println("userListReport End :: list.size() ---> " + list.size());
		} catch(Exception e) {
			System.out.println("Exception Occured: ");
			e.printStackTrace();
		}
		
		return new ModelAndView("userListReport","userList",list);		
	}

	@GetMapping("/downloadPdf")
	public ModelAndView downloadPdf()
	{
		ModelAndView mav=new ModelAndView("PDF");
		List<User> userList=clgrepo.userList();
		System.out.println(userList);
		mav.addObject("userList",userList);
		return mav;
	}
	
	@GetMapping("/downloadExcel")
	public ModelAndView downloadExcel()
	{
		ModelAndView mav=new ModelAndView("Excel");
		List<User> userList=clgrepo.userList();
		mav.addObject("userList", userList);
		return mav;
	}

}
