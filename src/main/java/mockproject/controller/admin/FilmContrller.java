package mockproject.controller.admin;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.binary.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;

import mockproject.model.FilmModel;
import mockproject.service.impl.FilmService;
import mockproject.utils.DateTimeFormat;



@Controller(value = "FilmControllerAdmin")
public class FilmContrller {

	@Autowired
	FilmService filmService;

	// Phương thức này được gọi mỗi lần có Submit.
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		Object target = dataBinder.getTarget();
		if (target == null) {
			return;
		}
		System.out.println("Target=" + target);

		if (target.getClass() == FilmModel.class) {

			// Đăng ký để chuyển đổi giữa các đối tượng multipart thành byte[]
			dataBinder.registerCustomEditor(byte[].class, new ByteArrayMultipartFileEditor());
		}
	}

	// Listing film
	@RequestMapping(value = "/admin/film", method = RequestMethod.GET)
	public String listFilm(Model model) {
		List<FilmModel> listFilm = filmService.listAllFilm();
		model.addAttribute("listFilm", listFilm);
		return "/admin/film/filmlist";
	}

	// Get Film create form
	@RequestMapping(value = "/admin/film/create", method = RequestMethod.GET)
	public String createFilm(Model model) {
		
		System.out.println("Vào đây");
		FilmModel filmModel = new FilmModel();
		
		model.addAttribute("uploadFilmwithImage", filmModel);
		
		System.out.println("OK chuyen di ");
		
		// chuyển tới trang nhập film
		return "/admin/film/filmcreate";
	}
	
	//Xử lý upload thông tin film with file
	@RequestMapping(value = "/admin/film/create", method = RequestMethod.POST)
	public String uploadFilmHandlerPost(HttpServletRequest request, 
			Model model, @ModelAttribute("uploadFilmwithImage") FilmModel filmModel) {
			String uncodeFilmName = filmModel.getName();
			String uncodeActors = filmModel.getActors();
			String uncodeProducer = filmModel.getProducer();
			String uncodeDescription = filmModel.getDescription();
			
			byte[] filmNameBytes = StringUtils.getBytesUtf8(uncodeFilmName);
			byte[] filmActorsBytes = StringUtils.getBytesUtf8(uncodeActors);
			byte[] filmProducerBytes = StringUtils.getBytesUtf8(uncodeProducer);
			byte[] filmDescription = StringUtils.getBytesUtf8(uncodeDescription);
			
			String testParam = StringUtils.newStringUtf8(filmNameBytes);
			
			filmModel.setName(StringUtils.newStringUtf8(filmNameBytes));
			filmModel.setActors(StringUtils.newStringUtf8(filmActorsBytes));
			filmModel.setProducer(StringUtils.newStringUtf8(filmProducerBytes));
			filmModel.setDescription(StringUtils.newStringUtf8(filmDescription));
			return this.doUpload(request, model, filmModel);
	}
	
	
	private String doUpload(HttpServletRequest request, Model model, FilmModel filmModel) {
		
		
		String descriptionForImage = filmModel.getImageFile();
		
		System.out.println("Image file Description: " + descriptionForImage);
		
		// lấy thư mục gốc upload file
		
		String uploadRootPath = request.getServletContext().getRealPath("imageupload");
		System.out.println("UploadRootPath = " + uploadRootPath);
		
		// tạo thư mục gốc upload nếu nó không tồn tại
		
		File uploadRootDir  = new File(uploadRootPath);
		
		if(!uploadRootDir.exists()) {
			uploadRootDir.mkdirs();
		}
		
		CommonsMultipartFile[] fileDatas = filmModel.getFileDatas();
		String fileName = null;
		List<File> uploadedFiles  = new ArrayList<>();
		File serverFile = null;
		String serverFilePath = null;
		for(CommonsMultipartFile fileData: fileDatas) {
			
			
			// get tên từ thư mục client
			fileName = fileData.getOriginalFilename();
			
			if(fileName != null && fileName.length() > 0) {
				// tạo file lưu trữ tại server
				try {
					
				
				serverFile = new File(uploadRootDir.getAbsolutePath() + File.separator + fileName);
				serverFilePath = uploadRootDir.getAbsolutePath() + File.separator + fileName;
				
				// ghi dữ liệu vào serverfile
				
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				
				stream.write(fileData.getBytes());
				
				stream.close();
				
				uploadedFiles.add(serverFile);
				
				}catch(Exception e) {
					System.out.println("Error write file: " + fileName);
				}
				
			}
			
		}
		
		
		// lay duoc du lieu file goc de luu vao db
		// tao mot the hien cua film 
		
		
		filmModel.setCreated_at(DateTimeFormat.getNow());
		filmModel.setUpdate_at(DateTimeFormat.getNow());
		if(serverFilePath != null && serverFilePath.length() > 0) {
			filmModel.setImagepath(serverFilePath);
		}
		
		filmService.saveFilm(filmModel);
		
		
		
		
		
		return "/admin/film/filmlist";
	}
	
	

}
