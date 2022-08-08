/* 날짜 차이 일수 계산 */
const getDateDiff = (d1, d2) => {
    const date1 = new Date(d1);
    const date2 = new Date(d2);
    
    const diffDate = date1.getTime() - date2.getTime();
    
    return Math.abs(diffDate / (1000 * 60 * 60 * 24)); // 밀리세컨 * 초 * 분 * 시 = 일
}

$(function() {
  $('input[name="daterange"]').daterangepicker({
    opens: 'left'
  }, function(start, end, label) {
    console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
    
    const day = Math.ceil(getDateDiff(start, end));
    console.log('두 날짜의 차이 : ' + day);
    
    let scheduleBox = "";
    
    for(let i = 0; i < day; i++) {
        scheduleBox += 
            "<div class='schedule'>" + 
                "<span>" + (i+1) + "일 차</span>"
            "</div>";
    }

    document.getElementById('scheduleList').innerHTML = scheduleBox;
  });
});