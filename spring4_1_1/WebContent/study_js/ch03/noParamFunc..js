//매개변수없이 함수에 전달된 값 받아오기
/*
함수 정의문에서 arguments를 사용하면 매개변수를 사용하는 것처럼
함수 호출문의 값을 받아 올 수 있다
함수 정의문의 매개변수가 없는 상태에서 데이터를 전달하여 함수를 호출하면
그 값은 배열에 저장된다. 함수 정의문에서는 그 값을 argument라는 변수로 참조한다
*/
{
  function hap() {
    let tot = 0;
    for (let i = 0; i < arguments.length; i++) {
      tot += arguments[i];
    }
    console.log(tot);
  }
  hap(10, 20, 30);

}