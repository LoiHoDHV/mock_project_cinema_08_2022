package mockproject.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import mockproject.model.ImageModel;

public class ImageMapper implements RowMapper<ImageModel> {

	@Override
	public ImageModel mapRow(ResultSet resultSet) {
		try {
			ImageModel image = new ImageModel();
			image.setId(resultSet.getInt("id"));
			image.setFilmid(resultSet.getInt("film_id"));
			image.setPath(resultSet.getString("path"));
			return image;
			
		}catch(SQLException e) {
			return null;
		}
	}
	
}
