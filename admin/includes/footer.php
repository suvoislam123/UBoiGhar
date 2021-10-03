</div><!--admin-part end-->
</div><!--row end-->
</div><!--container-fluid end-->
<div class="container-fluid footer_full">
<div class="container footer">
<div class="row">
</div><!--row end-->
</div><!--container end-->
</div><!--container-fluid end-->
<script type="text/javascript">
  let labels1 =['YES','No'];
  let data1 = [45,30,15,10];
  let colors1 = ['#ff0066','#36CAAB','#49A9EA','#cc0099'];

  let mychart1 = document.getElementById("myPieChart").getContext('2d');

  let chart1 = new Chart(mychart1, {
    type: 'doughnut',
    data: {
      labels: labels1,
      datasets: [{
        data: data1,
        backgroundColor: colors1
      }]
    },
    options: {
      title: {
        text: "Do you like?",
        display: true
      },
      legend: {
        display: true,
        position: "bottom"
      }
    }
  });

  let labels2 =['Bangladesh','Nepal','Pakistan','soudi-Arab','Turkish','Iran'];
  let data2 = [64,70,78,82,77,75];
  let colors2 = ['#ffe0e6','#ffecd9','#fff5dd','#dbf2f2','#d7ecfb','#ebe0ff'];
  let bdcolor2 =['#ff0033','#ff8000','#ffb300','#44bbbb','#1791e8','#5900ff'];
  let mychart2 = document.getElementById("mybarChart").getContext('2d');

  let chart2 = new Chart(mychart2, {
    type: 'bar',
    data: {
      labels: labels2,
      datasets: [{
        data: data2,
        backgroundColor: colors2,
        borderColor: bdcolor2,
        borderWidth: 2
      }]
    },
    options: {
      title: {
        text: "Do you like?",
        display: true
      },
      legend: {
        display: false
      },
      animation: {
        duration: 5000,
        easing: "easeInOutBounce"
      }
    }
  });

  let labels3 =['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug'];
  let data3 = [10,8,6,5,12,8,16,17];

  let mychart3 = document.getElementById("line-chart").getContext('2d');

  let chart3 = new Chart(mychart3, {
    type: 'line',
    data: {
      labels: labels3,
      datasets: [{
        label: "2021",
        data: data3,
        //backgroundColor: "#dbf2f2"
        borderColor: "#44bbbb",
        borderWidth: 2
      }]
    },
    options: {
      title: {
        text: "Do you like?",
        display: true
      },
      legend: {
        display: true
      },
      animation: {
        duration: 3000,
        easing: "easeInOutBounce"
      }
    }
  });


</script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.min.js"></script>
<script type="text/javascript" src="js/evo-calendar.min.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
</body>
</html>
