package mockproject.dao.impl;

import java.util.List;

import mockproject.dao.ICategoryDAO;
import mockproject.mapper.CategoriesMapper;
import mockproject.model.CategoryModel;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO {

	@Override
	public List<CategoryModel> listAllCategoryModels() {
		String sql = "select * from categories";
		return query(sql, new CategoriesMapper());
	}

	
}
