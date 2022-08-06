<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/x-icon" href="부산광역시-removebg-preview.ico">
	<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
	<title>회원가입</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/signUp.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script defer src="./js/registerChk.js"></script>
   	
   	<!--  부트스트랩 CDN  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
	<!-- 제이쿼리 CDN -->
	   <script src="https://code.jquery.com/jquery-3.6.0.min.js"
       integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- IONICONS -->
    <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
</head>
<body>
<jsp:include page="../commonJSP/sideBar.jsp"/>
  <div class="main">	
    <p class="sign" align="center">회원가입</p>
    
    <!-- 폼 작성할 때 action, method 및 각 input필드마다 name을 꼭!! 적어주자 
    	그래야 백엔드가 그걸 토대로 DAO를 작성하던, proc페이지를 작성하던 한다. -->
    <form class="form1" action="register_proc.jsp" method="post" name="regiFrm">
        <div >
            <!--아이디,비밀번호,비밀번호재확인-->
            
            <h3>아이디</h3>
            <div style="display:flex;">
            <span class="signup-input1">
                <input id="signup-id" type="text" name="id" readonly 
                placeholder="아이디를 입력하려면 먼저 중복체크 버튼을 눌러주세요."></input>
            </span>
            <button type="button" onclick="overlap()" class="overlap-btn">중복체크</button>
          </div>
           
        
            <h3>비밀번호</h3>
            <span class="signup-input">
                <input id="signup-pw" type="password" name="pw" class="pw" ></input>
                <span class="pw-lock"></span>
            </span>
				<div id="password-danger">숫자+ 영문+특수문자 조합으로 8자리 이상 사용해야 합니다.</div>
            	<div id="password-danger2"> 같은 문자를 4번 이상 사용 하실 수 없습니다.</div>
            <h3>비밀번호 재확인</h3>
            <span class="signup-input">
                <input id="signup-pww" type="password" name="ChkPw" class="pw"></input>
                <span class="pww-lock"></span>
            </span>
  				<div id="success">비밀번호가 일치합니다.</div>
         		<div id="fail">비밀번호가 일치하지않습니다.</div>
        </div>
        
        <div style="margin-top: 35px;">
            <!--닉네임,이름,생년월일,성별,이메일-->
            <h3>닉네임</h3>
            <span class="signup-input">
                <input id="signup-name" type="text" name="nick"></input>
            </span>
            <h3>이름</h3>
            <span class="signup-input">
                <input id="signup-name" type="text" name="name"></input>
            </span>

            <h3>생년월일</h3>
            <span style="display: flex;">
                <span class="signup-input-birth">
                    <input id="signup-birth-yy" name="birthyy" type="number" 
                    placeholder="생년(4자리)을 입력해주세요 " maxlength="4" oninput="maxLengthCheck(this)" 
                    min="1931" max="2022"></input>
                </span>
                <span class="signup-input-birth" style="margin-left: 10px;">
                    <select id="signup-birth-mm" class="selectbox" name="month" >
                        <option value="month">월</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>
                </span>
                <span class="signup-input-birth" style="margin-left: 10px;">
                    <input id="signup-birth-dd" name="birthdd"type="number" 
                    placeholder="생일을 입력해주세요" maxlength="2" 
                    oninput="maxLengthCheck(this)" min="1" max="31" ></input>
                </span>
            </span>


                 <span class="choice">
                <h3>본인 확인 이메일</h3>
               
            </span>
            <div style="display: flex;">
            <span class="signup-input1">
                <input id="signup-email" type="text" placeholder="선택입력" name="email" readonly></input>
                
            </span>
            <button type="button" onclick="eoverlap()" class="overlap-btn">중복체크</button>
            </div>
            
        </div>
    
        <div style="margin-top: 35px;">
            <!--휴대전화-->
            <h3>연락처</h3>
 
            <div style="display: flex;">
                <span class="signup-input">
                    <input id="signup-phone" type="text" placeholder="전화번호 입력" name="pNum" maxlength="11"></input>
                </span>
            
            </div>
            <div style="margin-top: 35px;">
                <h3><label>사업자 여부 <input type="checkbox" name="isBiz"></label></h3>
                
        <br><br>
        <div>
        	<div class="lastdiv">
	        	<label> 
		        <div class="signup-btn-wrap">
		            <button type="button" id="signup-btn" onclick="signUpChk()">가입하기</button>
		        </div>
		        </label>
		        
		        <label>
		        <div class="signup-btn-wrap">
		        	<button type="button" id="signup-btn" onclick="location.href='c_index.jsp'"
		            style="width:150px; margin-left: 10px;">메인페이지</button>
		        </div>
		        </label>
	        </div>
        </div>
        
      </form>      
            
    </div>

    <script type="text/javascript">
        function overlap() {
          window.open(
            "overlap.jsp",
            "중복 확인",
            "width=400, height=300, top=50, left=50"
          );
        }
        function eoverlap(){
        	window.open(
      		"eoverlap.jsp",
      		"이메일 중복 확인",
      		"width=500, height=300, top=50, left=50"
        	
        );
      }
        
	
    function maxLengthCheck(object){
      if (object.value.length > object.maxLength){
        object.value = object.value.slice(0, object.maxLength);
      }    
    }
    


        
    </script>
</body>
</html>
