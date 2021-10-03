<?php
    require_once('functions/function.php');
    needLogged();
    get_header();
    get_sidebar();
?>
  <div class="col-md-12 gray-bg">

      <div class="row">
        <div class="col-md-10">
          <h2>Dashboard</h2>
        </div>
        <div class="col-md-2">
       <div class="float-right mt-2">
         <a href="#" class="btn btn-sm btn-primary"> <i class="fa fa-download"></i><span> Generate Report</span> </a>
       </div>
        </div>
      </div>
      <div class="container-fluid">
        <div class="row mt-3">
          <!--col-md-3 start-->
          <div class="col-md-3">
            <div class="panel panel1">
                <div class="panel-body">
                    <div class="col-md-10">
                      <span>EARNINGS (MONTHLY)</span>
                      <h4>$40,000</h4>
                    </div>
                    <div class="col-auto">
                        <i class="fa fa-calendar fa-2x text-gray-300"></i>
                    </div>
                </div>
              </div>
          </div><!--col-md-3 end-->
          <!--col-md-3 start-->
          <div class="col-md-3">
            <div class="panel panel2">
                <div class="panel-body">
                    <div class="col-md-10">
                      <span>EARNINGS (Yearly)</span>
                      <h4>$540,000</h4>
                    </div>
                    <div class="col-auto">
                        <i class="fa fa-usd fa-2x text-gray-300"></i>
                    </div>
                </div>
              </div>
          </div><!--col-md-3 end-->
          <!--col-md-3 start-->
          <div class="col-md-3">
            <div class="panel panel3">
                <div class="panel-body">
                    <div class="col-md-10">
                      <span>EARNINGS (MONTHLY)</span>
                      <h4>$40,000</h4>
                    </div>
                    <div class="col-auto">
                        <i class="fa fa-book fa-2x text-gray-300"></i>
                    </div>
                </div>
              </div>
          </div><!--col-md-3 end-->
          <!--col-md-3 start-->
          <div class="col-md-3">
            <div class="panel panel4">
                <div class="panel-body">
                    <div class="col-md-10">
                      <span>PENDING REQUEST</span>
                      <h4>18</h4>
                    </div>
                    <div class="col-auto">
                        <i class="fa fa-comments fa-2x text-gray-300"></i>
                    </div>
                </div>
              </div>
          </div><!--col-md-3 end-->
        </div>
        <div class="row">
          <div class="col-md-8">
            <div class="panel panel2">
                <div class="panel-heading bg-info">
                  <div class="col-md-9 heading_title">
                      Country Customer
                   </div>
                   <div class="clearfix"></div>
                </div>
                <div class="panel-body">
                  <div class="chart-bar pt-4">
                     <canvas id="mybarChart" width="400" height="150"></canvas>
                  </div>
                </div>
              </div>
          </div>
           <div class="col-md-4">
             <div class="panel panel1">
                 <div class="panel-heading bg-info">
                   <div class="col-md-9 heading_title">
                       TIME IS NOW!
                    </div>
                    <div class="clearfix"></div>
                 </div>
                 <div class="panel-body">
                   <div class="analog-clock" style="height:330px;display: grid;place-items: center;background: #dde1e7;text-align: center;">
                     <div class="clock">
                              <div class="center-nut"></div>
                              <div class="center-nut2"></div>
                              <div class="indicators">
                                 <div></div>
                                 <div></div>
                                 <div></div>
                                 <div></div>
                                 <div></div>
                                 <div></div>
                                 <div></div>
                                 <div></div>
                                 <div></div>
                                 <div></div>
                                 <div></div>
                                 <div></div>
                              </div>
                              <div class="sec-hand">
                                 <div class="sec"></div>
                              </div>
                              <div class="min-hand">
                                 <div class="min"></div>
                              </div>
                              <div class="hr-hand">
                                 <div class="hr"></div>
                              </div>
                           </div>
                           <script>
                              const sec = document.querySelector(".sec");
                              const min = document.querySelector(".min");
                              const hr = document.querySelector(".hr");
                              setInterval(function(){
                                let time  = new Date();
                                let secs = time.getSeconds() * 6;
                                let mins = time.getMinutes() * 6;
                                let hrs = time.getHours() * 30;
                                sec.style.transform = `rotateZ(${secs}deg)`;
                                min.style.transform = `rotateZ(${mins}deg)`;
                                hr.style.transform = `rotateZ(${hrs+(mins/12)}deg)`;
                              });
                           </script>
                   </div>
                 </div>
               </div>
           </div>

        </div>
        <!--area chart row start-->
        <div class="row">
          <div class="col-md-8">
            <div class="panel panel4">
                <div class="panel-heading bg-info">
                  <div class="col-md-9 heading_title">
                      Monthly Benefit Analysis
                   </div>
                   <div class="clearfix"></div>
                </div>
                <div class="panel-body">
                  <div class="chart-line pt-4">
                    <?php

                       
                      $dataPoints = array( 
                        array("y" =>  12000,"label" => "March" ),
                        array("y" => 9000,"label" => "April" ),
                        array("y" => 2000,"label" => "May" ),
                        array("y" => 20000,"label" => "June" ),
                        array("y" => 1956,"label" => "June" ),
                        array("y" => 13000,"label" => "June" ),
                        array("y" => 17888,"label" => "June" ),
                        array("y" => 18000,"label" => "June" ),
                        
                      );
                       
                      ?>
                      <script>
                      window.onload = function() {
                       
                      var chart = new CanvasJS.Chart("chartContainer", {
                        animationEnabled: true,
                        title:{
                          text: "Revenue Chart of Acme Corporation"
                        },
                        axisY: {
                          title: "Revenue in Taka",
                          includeZero: true,
                          prefix: "Taka ",
                          suffix:  ""
                        },
                        data: [{
                          type: "bar",
                          yValueFormatString: "$#,##0K",
                          indexLabel: "{y}",
                          indexLabelPlacement: "inside",
                          indexLabelFontWeight: "bolder",
                          indexLabelFontColor: "white",
                          dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
                        }]
                      });
                      chart.render();
                       
                      }
                      </script>

                      <div id="chartContainer" style="height: 370px; width: 100%;"></div>
                      <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
                  </div>
                </div>
              </div>
          </div>
          <div class="col-md-4">
            <div class="panel panel1">
                <div class="panel-heading bg-info">
                  <div class="col-md-9 heading_title">
                      Pie Chart
                   </div>
                   <div class="clearfix"></div>
                </div>
                <div class="panel-body">
                  <div class="chart-pie pt-4">
                     <canvas id="myPieChart" width="400" height="320"></canvas>
                  </div>
                </div>
              </div>
          </div>
        </div>

      </div>

  </div><!--col-md-12 end-->
<?php
    get_footer();
?>
