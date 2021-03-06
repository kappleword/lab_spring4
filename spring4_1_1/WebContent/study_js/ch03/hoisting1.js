/*
  일반 함수 정의방식과 익명 함수 선언 참조 방식의 차이점
  일반 함수 정의는 함수 호출 시 호이스팅(hoisting) 기술을 지원함
  그러나 익명 함수 선언 참조 방식은 호이스팅을 지원하지 않는다
  호이스팅을 적용하면 호출문이 함수 정의문 보다 먼저 나와도
  함수 정의문을 끌어올려서(head로) 함수를 호출한다
*/
{
  let count = 0;//var 사용x
  myFnc();

  function myFnc() {
    count++;
    document.write("hello" + count, "<br>");
  }
  myFnc();

}