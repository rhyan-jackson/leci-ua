function draw_line_chart() {
    $("#myGraph").highcharts({
        chart: { type: "line" },
        title: { text: "Temperatures Average" },
        xAxis: {
            categories: ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun",
                "Jul", "Ago", "Set", "Out", "Nov", "Dez"]
        },
        series: [
            {
                name: "Lisboa",
                data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
            },
            {
                name: "Brazil",
                data: [23.0, 13.0, 21.0, 12.0, 34.9, 9.4, 9.1, 12.9, 25.12, 34.7, 23.5, 16.3]
            },
        ]
    });
}
function draw_column_chart() {
    $("#myGraph").highcharts({
        chart: { type: "column" },
        title: { text: "Temperatures Average" },
        xAxis: {
            categories: ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun",
                "Jul", "Ago", "Set", "Out", "Nov", "Dez"]
        },
        series: [
            {
                name: "Lisboa",
                data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
            },
            {
                name: "Brazil",
                data: [23.0, 13.0, 21.0, 12.0, 34.9, 9.4, 9.1, 12.9, 25.12, 34.7, 23.5, 16.3]
            },
        ]
    });
}

var type = "line"; // line graphic by default

function draw_graphic() {
    $("#myGraph2").highcharts({
        chart: { type: type },
        title: { text: "Temperatures Average" },
        xAxis: {
            categories: ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun",
                "Jul", "Ago", "Set", "Out", "Nov", "Dez"]
        },
        series: [
            {
                name: "Lisboa",
                data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
            },
            {
                name: "Brazil",
                data: [23.0, 13.0, 21.0, 12.0, 34.9, 9.4, 9.1, 12.9, 25.12, 34.7, 23.5, 16.3]
            },
        ]
    });
}

function graphic(element) {
    var e = document.getElementById("selection");
    type = e.options[e.selectedIndex].value;
    draw_graphic()
}