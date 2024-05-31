function GraficoLinhas() {
    $("#grafico").highcharts({
        chart: { type: "line" },
        title: { text: "Média de temperaturas" },
        xAxis: { categories: ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun",
                              "Jul", "Ago", "Set", "Out", "Nov", "Dez"]
               },
    series:[
                { name: "Abrantes",
                    data: [9.0, 10.0, 13.0, 14.0, 16.0, 20.0, 22.0, 23.0, 21.0, 17.0, 13.0, 10.0]
                },
                {
                  name: "Aveiro",
                    data: [8, 9, 11, 12, 14, 17, 19, 19, 18, 15, 11, 9]
                    }
            ]
    });
    };

function GraficoBarras() {
    $("#grafico").highcharts({
      chart: { type: "column" },
      title: { text: "Média de temperaturas" },
      xAxis: { categories: ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun",
                            "Jul", "Ago", "Set", "Out", "Nov", "Dez"]
    },
    
    series:[
      { name: "Abrantes",
          data: [9.0, 10.0, 13.0, 14.0, 16.0, 20.0, 22.0, 23.0, 21.0, 17.0, 13.0, 10.0]
      },
      {
        name: "Aveiro",
          data: [8, 9, 11, 12, 14, 17, 19, 19, 18, 15, 11, 9]
          }
        ]
    })
}
    