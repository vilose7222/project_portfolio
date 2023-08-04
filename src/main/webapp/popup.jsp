<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="overlay" class="overlay" onclick="closePopup()"></div>
    
    <div id="popup" class="popup">
      <h2>회원가입을 위해<br>정보를 입력해주세요.</h2>
      <form action= '<c:url value="/login/signup-action.jsp"/>'>
        <div class="container">
          <div class="form-row">
            <label for="popup-name">* 이름<br>
              <input type="text" name="name"><br><br>
            </label>
          </div>
          <div class="form-row">
            <label for="popup-id">* 아이디<br>
              <input type="text" name="id"><br><br>
            </label>
          </div>
        <div class="form-row">
          <label for="popup-email">* 이메일<br>
            <input type="text" name="email"><br><br>
          </label>
        </div>
        <div class="form-row">
          <label for="popup-password1">* 비밀번호<br>
            <input type="password" name="passwd"><br><br>
          </label>
        </div>
        <div class="form-row">
          <label for="popup-password2">* 비밀번호 확인<br>
            <input type="password"><br><br>
          </label>
        </div>
        <div class="form-row">
        </div>
        <div class="form-row">
          <div>
            <input type="checkbox" class="agree" >
            <label for="agree">&nbsp 이용약관 개인정보 수집 및 정보이용에 동의합니다.</label>
          </div>
        </div>
        <hr>
        <hr>
        <button type="submit" onclick="submitForm()">가입하기</button>
        <button type="reset" onclick="closePopup()">닫기</button>
      </form>
      </div>
    </div>