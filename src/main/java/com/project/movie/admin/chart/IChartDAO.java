package com.project.movie.admin.chart;

import java.util.HashMap;
import java.util.List;

import com.project.movie.user.reservation.ReservationDTO;

public interface IChartDAO {

	List<ChartDTO1> chart1();
	List<ChartDTO1> chart2();
	
	List<ChartDTO2> chart3(String movieSeq);
	
	ChartDTO3 chart4(String movieSeq);
	ChartDTO4 chart5(String movieSeq);
	List<MovieDTO> movie();
	
	List<ChartDTO1> rank();
	List<ChartDTO1> rank2();
	List<ChartDTO1> rank3();
	List<ChartDTO1> rank4();
	
}
