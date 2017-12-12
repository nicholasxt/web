<%@ page pageEncoding="utf-8" contentType="text/html"%>
<%@ page import="java.io.*,java.util.*,org.apache.commons.io.*"%> 
<%@ page import="org.apache.commons.fileupload.*"%> 
<%@ page import="org.apache.commons.fileupload.disk.*"%> 
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<% String imagePath = "";
    String imageName = "";
    String path="";
%>
<html>
	<head><title>文件传输例子</title>
	</head>
	<body>
	 	<%request.setCharacterEncoding("utf-8");%>
        <% boolean isMultipart = ServletFileUpload.isMultipartContent(request);//检查表单中是否包含文件 
          if (isMultipart) 
          { 
              FileItemFactory factory = new DiskFileItemFactory(); 
              ServletFileUpload upload = new ServletFileUpload(factory); 
              List items = upload.parseRequest(request); 
              String Id = "";
              for (int i = 0; i < items.size(); i++)
               { 
                   FileItem fi = (FileItem) items.get(i); 
                   if (fi.isFormField()) //如果是表单字段
                   {
                       if(fi.getFieldName().equals("id")){
                           Id = fi.getString("utf-8");
                       }
                      // out.print(fi.getFieldName()+":"+fi.getString("utf-8")); 
                    } 
                    else {//如果是文件
                            DiskFileItem dfi = (DiskFileItem) fi; 
                            if (!dfi.getName().trim().equals(""))//getName()返回文件名称或空串
                            { 
                               
                                 String fileName=application.getRealPath("/temp/files") 
                                                + System.getProperty("file.separator")
                                                +Id+"_"
                                                 + FilenameUtils.getName(dfi.getName()); 
                                
                                imageName=Id+"_"+FilenameUtils.getName(dfi.getName());
                                path = "http://localhost:8080/xt/temp/files/"+ imageName;
                                 
                                 dfi.write(new File(fileName));
                             } //if 
                        } //if 
                } //for 
            } //if 
        %> 
        <p><a href=<%=path%>><%=imageName%></a></p>
    </body>
</html>

