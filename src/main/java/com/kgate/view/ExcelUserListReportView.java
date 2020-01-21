package com.kgate.view;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import com.kgate.entity.User;
public class ExcelUserListReportView extends AbstractXlsView {

	@Override
	protected void buildExcelDocument(Map<String, Object> entity, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		response.setHeader("Content-disposition","attachment; filename=\"user_list.xls\"");
		
		@SuppressWarnings("unchecked")
		List<User> list=(List<User>) entity.get("userList");
		
		Sheet sheet=workbook.createSheet("User List");
		Row header=sheet.createRow(0);
		header.createCell(0).setCellValue("id");
		header.createCell(1).setCellValue("name");
		header.createCell(2).setCellValue("usertype");
		header.createCell(3).setCellValue("email");
		header.createCell(4).setCellValue("password");
		
		int rowNum=1;
		
		for(User user:list) 
		{
			Row row=sheet.createRow(rowNum++);
			header.createCell(0).setCellValue(user.getId());
			header.createCell(1).setCellValue(user.getName());
			header.createCell(2).setCellValue(user.getUsertype());			
			header.createCell(3).setCellValue(user.getEmail());
			header.createCell(4).setCellValue(user.getPassword());
			
		}	
	}

}
