package com.project.movie.admin.chart;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class ChartDAO implements IChartDAO {
	
	@Autowired
	private SqlSessionTemplate template; //root-context.xml 기반으로 객체 연쇄적으로 생성

	@Override
	public List<ChartDTO1> chart1() {
	
		
		return template.selectList("movie.chart1");
	}
	
	public List<ChartDTO1> chart2() {
	
		
		return template.selectList("movie.chart2");
	}
	
	public List<ChartDTO2> chart3(String movieSeq) {
	
		
		return template.selectList("movie.chart3", movieSeq);
	}

	public ChartDTO3 chart4(String movieSeq) {
	
	
		return template.selectOne("movie.chart4", movieSeq);
	}
	
	public ChartDTO4 chart5(String movieSeq) {
		
		
		
		return template.selectOne("movie.chart5", movieSeq);
	}

	@Override
	public List<MovieDTO> movie() {
		
		return template.selectList("movie.movie");
	}
	
	@Override
	public List<ChartDTO1> rank() {
		
		return template.selectList("movie.rank");
	}
	
	@Override
	public List<ChartDTO1> rank2() {
		
		return template.selectList("movie.rank2");
	}
	
	@Override
	public List<ChartDTO1> rank3() {
		
		return template.selectList("movie.rank3");
	}
	
	@Override
	public List<ChartDTO1> rank4() {
		
		return template.selectList("movie.rank4");
	}

	
	
}
