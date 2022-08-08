package mockproject.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import mockproject.dao.ICategoryDAO;
import mockproject.model.CategoryModel;
import mockproject.service.ICategoryService;

public class CategoryService implements ICategoryService {

	@Autowired
	ICategoryDAO categoryDao;
	@Override
	public List<CategoryModel> listAllCategoryModels() {
		return categoryDao.listAllCategoryModels();
	}

}
