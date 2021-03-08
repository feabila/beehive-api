<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>Annual Sales And Website Traffic - 2015</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="assets/bootstrap/bootstrap4-alpha3.min.css">
<!-- Google Font Roboto -->
<link rel="stylesheet" href="assets/fonts/font-roboto.css">
<link rel="stylesheet" href="style/dashboard-custom.css">



<!-- Scripts -->
<script src="assets/jquery/jquery-3.1.0.min.js"></script>
<script src="assets/tether/tether.min.js"></script>
<script src="assets/bootstrap/bootstrap4-alpha3.min.js"></script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script src="assets/jquery.scrollspeed/jquery.scrollspeed.min.js"></script>
<script src="assets/jquery.inview/jquery.inview.min.js"></script>

<script>
			$(function () {
				var totalRevenue = 15341110,
						totalUsers = 7687036;
				
				// CanvasJS doughnut chart to show annual sales percentage from United States(US)
				var salesDoughnutChartUS = new CanvasJS.Chart("sales-doughnut-chart-us", { 
					animationEnabled: true,
					backgroundColor: "transparent",
					title: {
						fontColor: "#848484",
						fontSize: 70,
						horizontalAlign: "center",
						text: "86%",
						verticalAlign: "center"
					},
					toolTip: {
						backgroundColor: "#ffffff",
						borderThickness: 0,
						cornerRadius: 0,
						fontColor: "#424242"
					},
					data: [
						{
							explodeOnClick: false,
							innerRadius: "96%",
							radius: "90%",
							startAngle: 270,
							type: "doughnut",
							dataPoints: [
								{ y: 85, color: "#c70000", toolTipContent: "United States: $<span>" + CanvasJS.formatNumber(Math.round(86 / 100 * totalRevenue), '#,###,###') + "</span>" },
								{ y: 15, color: "#424242", toolTipContent: null }
							]
						}
					]
				});

				// CanvasJS doughnut chart to show annual sales percentage from Netherlands(NL)
				var salesDoughnutChartNL = new CanvasJS.Chart("sales-doughnut-chart-nl", { 
					animationEnabled: true,
					backgroundColor: "transparent",
					title: {
						fontColor: "#848484",
						fontSize: 70,
						horizontalAlign: "center",
						text: "19%",
						verticalAlign: "center"
					},
					toolTip: {
						backgroundColor: "#ffffff",
						borderThickness: 0,
						cornerRadius: 0,
						fontColor: "#424242"
					},
					data: [
						{
							explodeOnClick: false,
							innerRadius: "96%",
							radius: "90%",
							startAngle: 270,
							type: "doughnut",
							dataPoints: [
								{ y: 19, color: "#c70000", toolTipContent: "Netherlands: $<span>" + CanvasJS.formatNumber(Math.round(19 / 100 * totalRevenue), '#,###,###') + "</span>" },
								{ y: 81, color: "#424242", toolTipContent: null }
							]
						}
					]
				});

				// CanvasJS doughnut chart to show annual sales percentage from Germany(DE)
				var salesDoughnutChartDE = new CanvasJS.Chart("sales-doughnut-chart-de", { 
					animationEnabled: true,
					backgroundColor: "transparent",
					title: {
						fontColor: "#848484",
						fontSize: 70,
						horizontalAlign: "center",
						text: "12%",
						verticalAlign: "center"
					},
					toolTip: {
						backgroundColor: "#ffffff",
						borderThickness: 0,
						cornerRadius: 0,
						fontColor: "#424242"
					},
					data: [
						{
							explodeOnClick: false,
							innerRadius: "96%",
							radius: "90%",
							startAngle: 270,
							type: "doughnut",
							dataPoints: [
								{ y: 12, color: "#c70000", toolTipContent: "Netherlands: $<span>" + CanvasJS.formatNumber(Math.round(12 / 100 * totalRevenue), '#,###,###') + "</span>" },
								{ y: 88, color: "#424242", toolTipContent: null }
							]
						}
					]
				});

				// CanvasJS spline area chart to show pageviews from Jan 2015 - Dec 2015
				var pageViewsSplineAreaChart = new CanvasJS.Chart("page-views-spline-area-chart", {
					animationEnabled: true,
					backgroundColor: "transparent",
					axisX: {
						gridThickness: 0,
						lineThickness: 0,
						maximum: new Date("1 Dec 2015"),
						minimum: new Date("1 Jan 2015"),
						tickLength: 0,
						valueFormatString: " "						
					},
					axisY: {
						gridThickness: 0,
						lineThickness: 0,
						tickLength: 0,
						valueFormatString: " "
					},
					toolTip: {
						backgroundColor: "#ffffff",
						borderThickness: 0,
						cornerRadius: 0,
						fontColor: "#424242"
					},
					data: [
						{
							color: "#424242",
							fillOpacity: 1,
							lineColor: "#ffffff",
							lineThickness: 3,							
							markerSize: 0,
							type: "splineArea",
							dataPoints: [
								{ x: new Date("1 Jan 2015"), y: 2171991 },
								{ x: new Date("1 Feb 2015"), y: 2678910 },
								{ x: new Date("1 Mar 2015"), y: 3215487 },
								{ x: new Date("1 Apr 2015"), y: 2213754 },
								{ x: new Date("1 May 2015"), y: 2584561 },
								{ x: new Date("1 Jun 2015"), y: 3178647 },
								{ x: new Date("1 Jul 2015"), y: 3645041 },
								{ x: new Date("1 Aug 2015"), y: 2914568 },
								{ x: new Date("1 Sep 2015"), y: 3985421 },
								{ x: new Date("1 Oct 2015"), y: 3754219 },
								{ x: new Date("1 Nov 2015"), y: 3971047 },
								{ x: new Date("1 Dec 2015"), y: 4121538 }
							]
						}
					]
				});
				
				// CanvasJS spline area chart to show orders from Jan 2015 - Dec 2015
				var ordersSplineAreaChart = new CanvasJS.Chart("orders-spline-area-chart", {
					animationEnabled: true,
					backgroundColor: "transparent",
					axisX: {
						gridThickness: 0,
						lineThickness: 0,
						maximum: new Date("1 Dec 2015"),
						minimum: new Date("1 Jan 2015"),
						tickLength: 0,
						valueFormatString: " "						
					},
					axisY: {
						gridThickness: 0,
						lineThickness: 0,
						tickLength: 0,
						valueFormatString: " "
					},
					toolTip: {
						backgroundColor: "#ffffff",
						borderThickness: 0,
						cornerRadius: 0,
						fontColor: "#424242"
					},
					data: [
						{
							color: "#424242",
							fillOpacity: 1,
							lineColor: "#ffffff",
							lineThickness: 3,							
							markerSize: 0,
							type: "splineArea",
							dataPoints: [
								{ x: new Date("1 Jan 2015"), y: 17376 },
								{ x: new Date("1 Feb 2015"), y: 21431 },
								{ x: new Date("1 Mar 2015"), y: 25724 },
								{ x: new Date("1 Apr 2015"), y: 22138 },
								{ x: new Date("1 May 2015"), y: 20676 },
								{ x: new Date("1 Jun 2015"), y: 25429 },
								{ x: new Date("1 Jul 2015"), y: 29160 },
								{ x: new Date("1 Aug 2015"), y: 23317 },
								{ x: new Date("1 Sep 2015"), y: 31883 },
								{ x: new Date("1 Oct 2015"), y: 30034 },
								{ x: new Date("1 Nov 2015"), y: 31768 },
								{ x: new Date("1 Dec 2015"), y: 41215 }
							]
						}
					]
				});
				
				// CanvasJS spline area chart to show revenue from Jan 2015 - Dec 2015
				var revenueSplineAreaChart = new CanvasJS.Chart("revenue-spline-area-chart", {
					animationEnabled: true,
					backgroundColor: "transparent",
					axisX: {
						gridThickness: 0,
						lineThickness: 0,
						maximum: new Date("1 Dec 2015"),
						minimum: new Date("1 Jan 2015"),
						tickLength: 0,
						valueFormatString: " "						
					},
					axisY: {
						gridThickness: 0,
						lineThickness: 0,
						tickLength: 0,
						valueFormatString: " "
					},
					toolTip: {
						backgroundColor: "#ffffff",
						borderThickness: 0,
						cornerRadius: 0,
						fontColor: "#424242"
					},
					data: [
						{
							color: "#424242",
							fillOpacity: 1,
							lineColor: "#ffffff",
							lineThickness: 3,							
							markerSize: 0,
							type: "splineArea",
							yValueFormatString: "$###,###.##",
							dataPoints: [
								{ x: new Date("1 Jan 2015"), y: 868800 },
								{ x: new Date("1 Feb 2015"), y: 1071550 },
								{ x: new Date("1 Mar 2015"), y: 1286200 },
								{ x: new Date("1 Apr 2015"), y: 1106900 },
								{ x: new Date("1 May 2015"), y: 1033800 },
								{ x: new Date("1 Jun 2015"), y: 1017160 },
								{ x: new Date("1 Jul 2015"), y: 1458000 },
								{ x: new Date("1 Aug 2015"), y: 1165850 },
								{ x: new Date("1 Sep 2015"), y: 1594150 },
								{ x: new Date("1 Oct 2015"), y: 1501700 },
								{ x: new Date("1 Nov 2015"), y: 1588400 },
								{ x: new Date("1 Dec 2015"), y: 1648600 }
							]
						}
					]
				});

				

				// CanvasJS spline chart to show users - new and returning from Jan 2015 - Dec 2015
				
				// CanvasJS bar chart to show country wise annual users percentage
				var usersCountriesBarChart = new CanvasJS.Chart("users-countries-bar-chart", {
					animationEnabled: true,
					backgroundColor: "transparent",
					axisX: {
						labelFontColor: "#f7f6f6",
						labelFontSize: 18,
						lineThickness: 0,
						tickThickness: 0
					},
					axisY: {
						gridThickness: 0,
						lineThickness: 0,
						tickThickness: 0,
						valueFormatString: " "
						                    
					},
					toolTip: {
						backgroundColor: "#ffffff",
						borderThickness: 0,
						cornerRadius: 0,
						fontColor: "#424242",
						contentFormatter: function (e) {
							return e.entries[0].dataPoint.label + ": " +  CanvasJS.formatNumber(Math.round(e.entries[0].dataPoint.y / 100 * totalUsers), '###,###'); // calculating and showing country wise number of users inside tooltip
						}
					},
					data: [
						{
							color: "#424242",
							indexLabelFontColor: "#f7f6f6",
							indexLabelFontFamily: "calibri",
							indexLabelFontSize: 18,
							indexLabelPlacement: "outside",
							type: "bar",
							dataPoints: [
								{ y: 3, indexLabel: "3%", label: "1 estrela" },
								{ y: 9,  indexLabel: "9%",  label: "2 estrelas" },
								{ y: 10, indexLabel: "10%", label: "3 estrelas" },
								{ y: 14, indexLabel: "14%", label: "4 estrelas" },
								{ y: 44, indexLabel: "44%", label: "5 estrelas" }
							]
						}
					]
				});
		
				
				
				// jQuery.inview plugin
				$('.inview').one('inview', function (e, isInView) {
					if (isInView) {
						switch (this.id) {
							case "sales-doughnut-chart-us": salesDoughnutChartUS.render();
								break;
							case "sales-doughnut-chart-nl": salesDoughnutChartNL.render();
								break;
							case "sales-doughnut-chart-de": salesDoughnutChartDE.render();
								break;
							case "page-views-spline-area-chart": pageViewsSplineAreaChart.render();
								break;
							case "orders-spline-area-chart": ordersSplineAreaChart.render();
								break;
							case "revenue-spline-area-chart": revenueSplineAreaChart.render();
								break;
							case "users-doughnut-chart": usersDoughnutChart.render();
								break;
							case "users-spline-chart": usersSplineChart.render();
								break;
							case "users-countries-bar-chart": usersCountriesBarChart.render();
								break;
						}
					}
				});
		
			});
	
		</script>
</head>
<body>
	<div class="container">
		<h1>Dashboard para análise de qualidade do serviço</h1>
		<h5 class="m-t-1">Beehive - Bubblebee</h5>
		<hr class="m-t-2">

		<h3>Qualidade do Bot</h3>

		<!-- sales doughnut charts -->
		<div class="row">
			<div class="col-md-4">
				<div class="inview" id="sales-doughnut-chart-us"></div>
				<h3 class="align-center">Sim - foram respondidas corretamente</h3>
			</div>

			<div class="col-md-4">
				<div class="inview" id="sales-doughnut-chart-nl"></div>
				<h3 class="align-center">Parcialmente</h3>
			</div>

			<div class="col-md-4">
				<div class="inview" id="sales-doughnut-chart-de"></div>
				<h3 class="align-center">Não - nao foram respondidas
					corretamente</h3>
			</div>
		</div>
		<!-- row sales doughnt charts -->

		<hr>

		<!-- stats spline area charts -->
		<div class="row">
			<div class="col-md-4">
				<div class="card card-block">
					<h5 class="card-title">Visualizações</h5>
					<h2>67</h2>
					<div class="inview" id="page-views-spline-area-chart"></div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card card-block">
					<h5 class="card-title">Logins</h5>
					<h2>122</h2>
					<div class="inview" id="orders-spline-area-chart"></div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card card-block">
					<h5 class="card-title">Cadastros</h5>
					<h2>
						23
					</h2>
					<div class="inview" id="revenue-spline-area-chart"></div>
				</div>
			</div>
		</div>
		<!-- row stats spline area charts -->





		<!-- users doughnut and spline chart -->
		
		<!-- row users doughnut and spline chart -->

		<hr>

		<h3>Avaliações por estrela</h3>

		<!-- users countries bar chart -->
		<div class="row">
			<div class="col-md-12">
				<div class="inview" id="users-countries-bar-chart"></div>
			</div>
		</div>
		<!-- row users countries bar chart -->

	</div>
	<!-- container -->

</body>
</html>