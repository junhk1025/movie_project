package com.project.movie.admin.chart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public interface IChartService {

	HashMap<String, ArrayList<String>> getChart1();

	HashMap<String, ArrayList<String>> getChart2();

	HashMap<String, ArrayList<String>> getChart3();
	
	HashMap<String, ArrayList<String>> getChart4();
	

	
	HashMap<String, ArrayList<String>> getChart5(String movieSeq);
	
	ChartDTO3 getChart6(String movieSeq);
	ChartDTO4 getChart7(String movieSeq);

	List<MovieDTO> getMoive();

	
	List<ChartDTO1> getRank();
	List<ChartDTO1> getRank2();

	List<ChartDTO1> getRank3();
	List<ChartDTO1> getRank4();
}
