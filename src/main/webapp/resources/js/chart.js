



var data1 =[];
var categories1 = [];
var data2 = [];
var categories2 = [];
var data3 =[];
var categories3 =[];
var data4 =[];
var data5 =[];

var movieLi = $(".movieLi");

var movieTitle = $(".movieLi .movie_title")


function init() {
	data1 = [
		{name: '인비저블맨', data: [43934, 52503, 57177, 69658, 97031]}, 
		{name: '정직한 후보', data: [24916, 24064, 29742, 29851, 32490]}, 
		{name: '작은 아씨들', data: [11744, 17722, 16005, 19771, 20185]}, 
		{name: '지푸라기', data: [null, null, 7988, 12169, 15112]}
		];
	categories1 = [

	    '03/06',
	    '03/07',
	    '03/08',
	    '03/09',
	    '03/10'

	]
	data2 = [	
		{name: '팝콘', data: [43934, 52503, 57177, 69658, 97031]}, 
		{name: '핫도그', data: [24916, 24064, 29742, 29851, 32490]}, 
		{name: '츄러스', data: [11744, 17722, 16005, 19771, 20185]}, 
		{name: '콜라', data: [null, null, 7988, 12169, 15112]}, 
		{name: '떡순튀', data: [12908, 5948, 8105, 11248, 8989]}
		];
	categories2 = [

	    '03/06',
	    '03/07',
	    '03/08',
	    '03/09',
	    '03/10'

	]

	data3 =[
		{
	        name: 'totalAttendance',
	        data: [49, 71, 106, 129, 144]
	    }];
	    
	categories3 =[

	    '03/06',
	    '03/07',
	    '03/08',
	    '03/09',
	    '03/10'

	];
	data4 =[
		{
	        name: 'gender',
	        data: [
	            { name: '남자', y: 66.50 },
	            { name: '여자', y: 33.50 }

	        ]
	    }];
	data5 =[
		{
	        name: 'age',
	        data: [20.5, 30.5, 20, 15.5, 9.58, 6]

	    }];
	
	
	 $(".total").addClass('movie_list_active');
	 $(".total").children(".check").css("display", "inline-block");
	 $(".total").children("a").children(".check").css("display", "inline-block");
	
}
init();

	





$("#btn1").click(function() {
	$("#btn2").removeClass("btn-active");
	$("#btn1").addClass("btn-active");
	data1 = [
		{name: '인비저블맨', data: [43934, 52503, 57177, 69658, 97031]}, 
		{name: '정직한 후보', data: [24916, 24064, 29742, 29851, 32490]}, 
		{name: '작은 아씨들', data: [11744, 17722, 16005, 19771, 20185]}, 
		{name: '지푸라기', data: [null, null, 7988, 12169, 15112]}
		];
	categories1 = [

        '03/06',
        '03/07',
        '03/08',
        '03/09',
        '03/10'

    ]
	
	data2 = [	
		{name: '팝콘', data: [43934, 52503, 57177, 69658, 97031]}, 
		{name: '핫도그', data: [24916, 24064, 29742, 29851, 32490]}, 
		{name: '츄러스', data: [11744, 17722, 16005, 19771, 20185]}, 
		{name: '콜라', data: [null, null, 7988, 12169, 15112]}, 
		{name: '떡순튀', data: [12908, 5948, 8105, 11248, 8989]}
		];
	categories2 = [

        '03/06',
        '03/07',
        '03/08',
        '03/09',
        '03/10'

    ]
	
	chart1();

	
});
$("#btn2").click(function() {
	$("#btn1").removeClass("btn-active");
	$("#btn2").addClass("btn-active");
	data1 = [
		{name: '인비저블맨', data: [43934, 52503, 57177, 69658, 97031]}, 
		{name: '정직한 후보', data: [24916, 24064, 29742, 29851, 32490]}, 
		{name: '작은 아씨들', data: [11744, 17722, 16005, 19771, 20185]}, 
		{name: '지푸라기', data: [null, null, 7988, 12169, 15112]}
		];
	categories1 = [

        '11월',
        '12월',
        '01월',
        '02월',
        '03월'

    ]
	
	data2 = [	
		{name: '팝콘', data: [43934, 52503, 57177, 69658, 97031]}, 
		{name: '핫도그', data: [24916, 24064, 29742, 29851, 32490]}, 
		{name: '츄러스', data: [11744, 17722, 16005, 19771, 20185]}, 
		{name: '콜라', data: [null, null, 7988, 12169, 15112]}, 
		{name: '떡순튀', data: [12908, 5948, 8105, 11248, 8989]}
		];
	categories2 = [

		'11월',
        '12월',
        '01월',
        '02월',
        '03월'

    ];
	chart1();

	
	
});

function chart1() {
	//aaa
	Highcharts.chart('chart1', {

	    title: {
	        text: '영화 매출'
	    },

	   

	    yAxis: {
	        title: {
	            text: '금액 ( 원 )'
	        }
	    },

	    xAxis: {
	    	categories: categories1,
	        crosshair: true
	    },

	    legend: {
	    	enabled: false,


	    },

	    plotOptions: {
	        series: {
	            label: {
	                connectorAllowed: false
	            }
	        }
	    },

	    series: data1,

	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 500
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    },
	    credits:{
	    	enabled:false
	 
	    }

	});
	
	Highcharts.chart('chart2', {

	    title: {
	        text: '스낵 매출'
	    },

	   

	    yAxis: {
	        title: {
	            text: '금액 ( 원 )'
	        }
	    },

	    xAxis: {
	    	categories: categories2,
	        crosshair: true
	    },

	    legend: {
	    	enabled: false,
	    	layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle',
	        borderWidth: 0

	    },

	    plotOptions: {
	        series: {
	            label: {
	                connectorAllowed: false
	            }
	        }
	    },

	    series: data2,

	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 500
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    },
	    credits:{
	    	enabled:false
	 
	    }

	});
}
function chart2() {
	
	Highcharts.chart('chart3', {
	    chart: {
	        type: 'column'
	    },
	    title: {
	        text: '일별 관람객 수'
	    },

	    xAxis: {
	        categories: categories3,
	        crosshair: true
	    },
	    yAxis: {
	        min: 0,
	        title: {
	            text: '인원 수 ( 명 )'
	        }
	    
	    },
	    
	    legend: {
	    	enabled: false,


	    },
	    
	    tooltip: {
	        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
	        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
	            '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
	        footerFormat: '</table>',
	        shared: true,
	        useHTML: true
	    },
	    plotOptions: {
	        column: {
	            pointPadding: 0.2,
	            borderWidth: 0
	        },
		    series: {
		        color: '#6F5898',
		        dataLabels: {
	                enabled: true,
	                format: '{point.y}명'
	            }
		    }
	    },
	    series: data3,
	    credits:{
	    	enabled:false
	 
	    }
	});
	
	// Build the chart
	Highcharts.chart('chart4', {
	    chart: {
	        plotBackgroundColor: null,
	        plotBorderWidth: null,
	        plotShadow: false,
	        type: 'pie'
	    },
	    title: {
	        text: '관람객 성비율'
	    },
	    tooltip: {
	        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
	    },
	    accessibility: {
	        point: {
	            valueSuffix: '%'
	        }
	    },
	    plotOptions: {
	        pie: {
	            allowPointSelect: true,
	            cursor: 'pointer',
	            colors: pieColors,
	            dataLabels: {
	                enabled: true,
	                format: '<b>{point.name}</b><br>{point.percentage:.1f} %',
	                distance: -50,
	                filter: {
	                    property: 'percentage',
	                    operator: '>',
	                    value: 4
	                }
	            }
	        }
	    },
	    series: data4,
	    credits:{
	    	enabled:false
	 
	    }
	});


	Highcharts.chart('chart5', {
	    chart: {
	        type: 'column'
	    },
	    title: {
	        text: '연령별 관람객 비율'
	    },

	    xAxis: {
	        categories: [
	            '10대',
	            '20대',
	            '30대',
	            '40대',
	            '50대',
	            '60대'
	        ],
	        crosshair: true
	    },
	    yAxis: {
	        min: 0,
	        max: 50,
	        title: {
	            text: '비율 ( % )'
	        }
	    },
	    
	    legend: {
	    	enabled: false,


	    },
	    
	    tooltip: {
	        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
	        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
	            '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
	        footerFormat: '</table>',
	        shared: true,
	        useHTML: true
	    },
	    plotOptions: {
	        column: {
	            pointPadding: 0.2,
	            borderWidth: 0
	        },
		    series: {
		        color: 'tomato',
		        dataLabels: {
		            enabled: true,
		            format: '{point.y:.1f}%'
		        }
		    }
	    },
	    series: data5,
	    credits:{
	    	enabled:false
	 
	    }
	});
	
	
}




Highcharts.setOptions(Highcharts.theme);
Highcharts.setOptions({
    colors: ['#058DC7', '#50B432', '#ED561B', '#DDDF00', '#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4']
});

//Make monochrome colors
var pieColors = (function () {
    var colors = ['cornflowerblue', '#e83e8c', '#ED561B', '#DDDF00', '#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4'];
/*         base = Highcharts.getOptions().colors[0],
        i;

    for (i = 0; i < 10; i += 1) {
        // Start out with a darkened base color (negative brighten), and end
        // up with a much brighter color
        colors.push(Highcharts.color(base).brighten((i - 3) / 7).get());
    } */
    return colors;
}());


chart1();
chart2();


movieLi.click(function() {

   movieLi.removeClass('movie_list_active');
   movieLi.children("a").children(".check").css("display", "none");

   $(".movie_area").html($(this).text());

   if ($(this).hasClass('movie_list_active')) {
      $(this).removeClass('movie_list_active');
      $(this).children(".check").css("display", "none");
      $(this).children("a").children(".check").css("display", "none");
   } else {
      $(this).addClass('movie_list_active');
      $(this).children(".check").css("display", "inline-block");
      $(this).children("a").children(".check").css("display", "inline-block");
   }
   
   data3 =[
		{
	        name: 'totalAttendance',
	        data: [100, 50, 36, 150, 70]
	    }];
	    
	categories3 =[

	    '03/06',
	    '03/07',
	    '03/08',
	    '03/09',
	    '03/10'

	];
	data4 =[
		{
	        name: 'gender',
	        data: [
	            { name: '남자', y: 33.50 },
	            { name: '여자', y: 66.50 }

	        ]
	    }];
	data5 =[
		{
	        name: 'age',
	        data: [10, 20, 10, 33, 17, 10]

	    }];
   chart2();
});



