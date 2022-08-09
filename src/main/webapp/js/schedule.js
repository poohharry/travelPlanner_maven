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
      console.log("start : " + start);
     // n일 차 스케줄 박스 생성
      let scheduleBox = "";  
      for(let i = 1; i <= day; i++) {
        
        // let date = new date(start);
        // let currentDate = 
        // date.setDate(date.getDate() + (i-1));
          scheduleBox += 
              "<div class='schedule'>" + 
                  "<span>" + i + "일 차 (" + date + ")</span>" + 
                  "<div id='day" + i +"'>" + 
                  "</div>" +
              "</div>";
      }

      document.getElementById('scheduleList').innerHTML = scheduleBox;
      
      
      
      // 스케줄 박스 생성에 따른 장바구니 아이템의 select태그 옵션 추가 생성
      const selectDate = document.getElementsByClassName('selectDate')  // 컬렉션 형태로 리턴
      
      let option = "";
      for(let i = 1; i <= day; i++) {
        option += "<option value='" + i + "'>" + (i) + "일 차</option>"
      }

      // 각 아이템들의 select태그에 option추가
      for(let i = 0; i < selectDate.length; i++) {
        selectDate.item(i).innerHTML = option;
      }
      
    });
  });
  
  // 일정에 추가하기 버튼을 눌렀을 때 호출되는 메소드
  function add(name) {
	  // 클릭한 버튼이 소속된 select박스의 value를 가져온다 (몇 일 차에 추가할지)
    const day = document.getElementById(name).value;
    console.log(day);

    // 알맞은 일 차의 div을 들고온다 (버튼을 클릭해서 아이템을 담을 공간)
    const scheduleDay = document.getElementById('day' + day);

    // 전에 담겨있던 아이템을 가져옴
    let scheduleStr = scheduleDay.innerHTML;

    scheduleStr += "<div>" + name + "</div>";

    scheduleDay.innerHTML = scheduleStr;

  }