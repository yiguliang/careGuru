
<dataView>
  <div class="question-intro tobeanimate">
    <div class="questionText">
      <h2>Don't know how to deal with medical stuffs? <br> We Explain It.</h2>
      <br>
      <p>CareGuru aims to introduce the U.S. healthcare system to people who are not familiar with it, especially international students. Over the years, we always hear people complaining about waiting for hours in the emergency room or getting ridiculous bills after a hospital visit. Our web application aims to help these students to learn the healthcare system in the U.S. so that they can avoid such inconveniences and confusions. </p>
      <br>
      <p>CareGuru has three parts: a information hub for you to read all related information, a scenarios-based test center where you can check your understanding, and a personalized dashboard that remind you to stay healthy. </p>
      <br>
      <p>Click "Get Access" on the upper right corner to start your learning! </p>
    </div>
    <div class="questionPic">
      <img src="./img/LOGO2.png" alt="logo">
    </div>
  </div>
  <button class="btn" onclick={dataToggle}>How people use health care system?</button>
  <div class="dataWrap" show={showData} ref="showData">
    <div id="status" class="data-view"></div>
    <div id="learn" class="data-view"></div>
    <div id="challenge" class="data-view"></div>
    <div id="exam" class="data-view"></div>
    <div id="usage" class="data-view"></div>
    <!-- <div id="rating" class="data-view"></div> -->
  </div>

  <a href="#tour" class="btn"  show={showData} ref="showData" type="button"> Plz! Let me sign up!</a>


  <script>
    var that = this;
    this.showData = false;
    dataToggle() {
      this.showData = true;
      this.refs.showData.forEach((x)=> {
        x.classList.add('activate');
      });
    };





    this.on('mount', function () {

        detectScroll();

        Highcharts.chart('status', {
          chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
          },
          title: {
            text: 'Who is taking the survey?'
          },
          tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
          },
          plotOptions: {
            pie: {
              allowPointSelect: true,
              cursor: 'pointer',
              dataLabels: {
                enabled: false
              },
              showInLegend: true
            }
          },
          series: [{
            name: 'Percentage',
            colorByPoint: true,
            data: [{
              name: 'International Student',
              y: 80,
              sliced: true,
              selected: true,
              color: "#6FCEE9"
            }, {
              name: 'U.S. resident, student',
              y: 10,
              color: "#F07277"
            }, {
              name: 'International, employed',
              y: 5,
              color: "#5c5c8a"
            }, {
              name: 'Other - visiting scholar',
              y: 5,
              color: "#27314D"
            }]
          }]
        });


        Highcharts.chart('usage', {
        chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false,
          type: 'pie'
        },
        title: {
          text: 'Have you used U.S. health insurance before?'
        },
        tooltip: {
          pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
          pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
              enabled: false
            },
            showInLegend: true
          }
        },
        series: [{
          name: 'Percentage',
          colorByPoint: true,
          data: [{
            name: "Yes, I bought health insurance because it's required and mandatory",
            y: 78.95,
            sliced: true,
            selected: true,
            color: "#6FCEE9"
          }, {
            name: "Yes, for my own benefits.",
            y: 15.79,
            color: "#F07277"
          }, {
            name: 'No',
            y: 5.26,
            color: "#27314D"
          }]
        }]
      });


      Highcharts.chart('challenge', {
      chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
      },
      title: {
        text: 'We have met these challenges...'
      },
      tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
      },
      plotOptions: {
        pie: {
          allowPointSelect: true,
          cursor: 'pointer',
          dataLabels: {
            enabled: false
          },
          showInLegend: true
        }
      },
      series: [{
        name: 'Percentage',
        colorByPoint: true,
        data: [{
          name: "Don’t know where to find accurate information.",
          y: 40,
          sliced: true,
          selected: true,
          color: "#6FCEE9"
        }, {
          name: "Schools’ health care websites are too confusing.",
          y: 55,
          color: "#F07277"
        }, {
          name: 'There are too many rules.',
          y: 5,
          color: "#27314D"
        }]
      }]
      });


      Highcharts.chart('exam', {
      chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
      },
      title: {
        text: 'Did you get regular health screening or recommended immunization in the past 12 months?'
      },
      tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
      },
      plotOptions: {
        pie: {
          allowPointSelect: true,
          cursor: 'pointer',
          dataLabels: {
            enabled: false
          },
          showInLegend: true
        }
      },
      series: [{
        name: 'Percentage',
        colorByPoint: true,
        data: [{
          name: "Yes",
          y: 70,
          sliced: true,
          selected: true,
          color: "#6FCEE9"
        }, {
          name: "Not sure",
          y: 15,
          color: "#F07277"
        }, {
          name: 'No',
          y: 15,
          color: "#27314D"
        }]
      }]
    });

    Highcharts.chart('learn', {
      chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
      },
      title: {
        text: 'We are eager to know…'
      },
      tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
      },
      plotOptions: {
        pie: {
          allowPointSelect: true,
          cursor: 'pointer',
          dataLabels: {
            enabled: false
          },
          showInLegend: true
        }
      },
      series: [{
        name: 'Percentage',
        colorByPoint: true,
        data: [{
          name: 'How to find appropriate health care provider.',
          y: 30,
          sliced: true,
          selected: true,
          color: "#6FCEE9"
        }, {
          name: 'Must-know health insurance policy.',
          y: 30,
          color: "#F07277"
        }, {
          name: 'How to use my health insurance benefits?',
          y: 20,
          color: "#9fdfbf"
        }, {
          name: 'Basic terms of health insurance.',
          y: 10,
          color: "#5c5c8a"
        }, {
          name: 'The general U.S. healthcare system.',
          y: 10,
          color: "#27314D"
        }]
      }]
    });

      //rating for
      // var data = [1,1,1,1,2,2,2,2,2,2,3,3,3,4,4,6,6,7,8,];

      // Highcharts.chart('rating', {
      //   title: {
      //     text: 'Highcharts Histogram'
      //   },
      //   xAxis: [{
      //     title: { text: 'Data' },
      //     alignTicks: false
      //   }, {
      //     title: { text: 'Histogram' },
      //     alignTicks: false,
      //     opposite: true
      //   }],

      //   yAxis: [{
      //     title: { text: 'Data' }
      //   }, {
      //     title: { text: 'Histogram' },
      //     opposite: true
      //   }],

      //   series: [{
      //     name: 'Histogram',
      //     type: 'histogram',
      //     xAxis: 1,
      //     yAxis: 1,
      //     baseSeries: 's1',
      //     zIndex: -1
      //   }, {
      //     name: 'Data',
      //     type: 'scatter',
      //     data: data,
      //     id: 's1',
      //     marker: {
      //       radius: 1.5
      //     }
      //   }]
      // });



      })
  </script>



  <style>

    .question-intro {
      font-weight: 100;
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
      padding: 80px 20px;
    }
    .question-intro .questionText {
      max-width: 600px;
      font-size: 1em;
    }
    .question-intro h2 {
      font-weight: inherit;
    }
    .question-intro p {
      font-weight: inherit;

    }
    .question-intro .questionPic {
      flex-basis: 250px;
      margin-top: 70px;

    }
    .question-intro .questionPic img {
      width: 100%;
      height: auto;
    }
    .dataWrap {
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
      position: relative;
    }

    .data-view {
      min-width: 310px;
      height: 300px;
      max-width: 400px;
    }

    a.btn {
      width: 155.44px;
      box-sizing: border-box;
    }
  </style>
</dataView>
