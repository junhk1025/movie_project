package com.project.movie;

import java.util.HashMap;
import java.util.List;

public interface IMovieService {

	

	List<MovieDTO> list(String sort);

	List<MovieDTO> mplist(String id);

	List<MovieDTO> reservelist(HashMap<String,Object> map);

	

}
