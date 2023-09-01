package com.project.movie.user.list;

import java.util.HashMap;
import java.util.List;

public interface IListService {

	

	List<ListDTO> list(HashMap<String, String> map);

}
