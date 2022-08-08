package mockproject.service;

import java.util.List;

import mockproject.model.FilmModel;

public interface IFilmService {
	
	List<FilmModel> listAllFilm();
	Integer saveFilm(FilmModel filmModel);;
}
