package mockproject.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mockproject.dao.IFilmDAO;
import mockproject.model.FilmModel;
import mockproject.service.IFilmService;

@Service
public class FilmService implements IFilmService {

	@Autowired
	IFilmDAO filmDao;
	@Override
	public List<FilmModel> listAllFilm() {
		return filmDao.listAllFilm();
	}
	@Override
	public Integer saveFilm(FilmModel filmModel) {
		return filmDao.saveFilm(filmModel);
	}
	
	
	

}
