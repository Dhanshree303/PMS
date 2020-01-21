package com.kgate.view;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.kgate.entity.User;
import com.lowagie.text.Document;
import com.lowagie.text.Table;
import com.lowagie.text.pdf.PdfWriter;

public class PdfUserListReportView extends AbstractPdfView
{

	@Override
	protected void buildPdfDocument(Map<String, Object> entity, Document document, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		response.setHeader("Content-Disposition","attachment; filename=\"user_list.pdf\"");

		@SuppressWarnings("unchecked")
		List<User> list=(List<User>) entity.get("userList");
		
		Table table=new Table(5);
		table.addCell("id");
		table.addCell("name");
		table.addCell("usertype");
		table.addCell("email");
		table.addCell("password");
		
		for(User user:list) 
		{
			table.addCell(String.valueOf(user.getId()));
			table.addCell(user.getName());
			table.addCell(user.getUsertype());
			table.addCell(user.getEmail());
			table.addCell(user.getPassword());
			
		}

		document.add(table);
	}

}
