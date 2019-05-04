$(function() {
    Morris.Area({
        element: 'morris-area-chart',
        data: [
            {
            period: '2019-04-02',
            iphone: 12,
            itouch: 2
        }, {
            period: '2019-04-03',
            iphone: 24,
            itouch: 9
        }, {
            period: '2019-04-04',
            iphone: 33,
            itouch: 5
        }, {
            period: '2019-04-05',
            iphone: 55,
            itouch: 10
        }, {
            period: '2019-04-06',
            iphone: 66,
            itouch: 7
        }, {
            period: '2019-04-07',
            iphone: 83,
            itouch: 10
        }, {
            period: '2019-04-08',
            iphone: 85,
            itouch: 14
        }],
        xkey: 'period',
        ykeys: ['iphone', 'itouch'],
        labels: ['已完成任务',  '总任务'],
        pointSize: 2,
        hideHover: 'auto',
        resize: true
    });

    Morris.Donut({
        element: 'morris-donut-chart',

        data: [{
            label: "王小明",
            value: 55
        }, {
            label: "123",
            value: 14
        }, {
            label: "xiaoming",
            value: 9
        },{
            label: "王大明",
            value: 30
        },{
            label: "李小四",
            value: 20
        }],
        resize: true
    });

    Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
            y: '2006',
            a: 100,
            b: 90
        }, {
            y: '2007',
            a: 75,
            b: 65
        }, {
            y: '2008',
            a: 50,
            b: 40
        }, {
            y: '2009',
            a: 75,
            b: 65
        }, {
            y: '2010',
            a: 50,
            b: 40
        }, {
            y: '2011',
            a: 75,
            b: 65
        }, {
            y: '2012',
            a: 100,
            b: 90
        }],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['Series A', 'Series B'],
        hideHover: 'auto',
        resize: true
    });
    
});
