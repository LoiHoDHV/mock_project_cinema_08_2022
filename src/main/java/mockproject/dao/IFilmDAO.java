package mockproject.dao;

import java.util.List;

import mockproject.model.FilmModel;

public interface IFilmDAO extends GenericDAO<FilmModel> {
	List<FilmModel> listAllFilm();
	
	int saveFilm(FilmModel filmModel);
}
