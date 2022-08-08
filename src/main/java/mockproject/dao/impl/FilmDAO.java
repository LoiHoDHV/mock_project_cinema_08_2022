package mockproject.dao.impl;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Repository;

import mockproject.dao.IFilmDAO;
import mockproject.mapper.FilmMapper;
import mockproject.model.FilmModel;

@Repository
public class FilmDAO extends AbstractDAO<FilmModel> implements IFilmDAO  {
	@Override
	public List<FilmModel> listAllFilm() {
		
		String sql = "select * from films";
		return query(sql, new FilmMapper());
	}

	@Override
	public int saveFilm(FilmModel filmModel) {
		String sql = "insert into films(name, actors, producer, duration, description, imagepath, created_at, updated_at)"
				+ "values"
				+ "(?,?,?,?,?,?,?,?);";
		
		return insert(sql, filmModel.getName(), filmModel.getActors(),
				filmModel.getProducer(), filmModel.getDuration(), 
				filmModel.getDescription(),filmModel.getImagepath(), filmModel.getCreated_at().toString(), 
				filmModel.getUpdate_at().toString());
	}
	
}
