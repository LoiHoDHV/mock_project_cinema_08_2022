package mockproject.form;


import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class UploadForm {
	
	private String name;
	private String actors;
	private String producer;
	private int duration;
	private int path;
	private int category;
	
	public int getCategory() {
		return category;
	}


	public void setCategory(int category) {
		this.category = category;
	}


	private String description;
	
	
	//upload files 
	private CommonsMultipartFile[] fileDatas;


	public String getName() {
		return name;
	}


	public String getActors() {
		return actors;
	}


	public String getProducer() {
		return producer;
	}


	public int getDuration() {
		return duration;
	}


	public int getPath() {
		return path;
	}


	public String getDescription() {
		return description;
	}


	public CommonsMultipartFile[] getFileDatas() {
		return fileDatas;
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setActors(String actors) {
		this.actors = actors;
	}


	public void setProducer(String producer) {
		this.producer = producer;
	}


	public void setDuration(int duration) {
		this.duration = duration;
	}


	public void setPath(int path) {
		this.path = path;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public void setFileDatas(CommonsMultipartFile[] fileDatas) {
		this.fileDatas = fileDatas;
	}
	
	
	

	
	
}
