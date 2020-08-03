package download;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/download.bit")
public class DownloadController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String filename=req.getParameter("file");
		String origin=req.getParameter("org");
		String path=req.getRealPath("up");
		java.io.File file=new File(path+"\\"+filename);
		System.out.println(file.exists());
		//Header("Content-Disposition:attachment; filename=파일이름); 
		resp.setContentType("application/octet-stream");
		resp.setHeader("Content-Disposition", "attachment; filename="+origin);
		OutputStream out = resp.getOutputStream();
		if(file.exists()){
			FileInputStream fis=new FileInputStream(file);
			int cnt=-1;
			while((cnt=fis.read())!=-1){
				out.write(cnt);
			}
			out.flush();
		}
	}
}









