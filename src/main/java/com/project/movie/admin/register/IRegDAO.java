package com.project.movie.admin.register;

import java.util.List;

public interface IRegDAO {

	
	List<RegisterDTO> country();

	List<RegisterDTO> genre();
	
	int add(RegisterDTO dto);

	int addCast(RegisterDTO dto);

	int addSteel(RegisterDTO dto);

}
