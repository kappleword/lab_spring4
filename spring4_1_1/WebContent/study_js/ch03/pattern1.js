//제공함수를 통한 패턴 분석1
{
  //console.log('test);
  'use strict'
  let addNum = 0;

  const auto_1 = setInterval(function () {
    addNum++;
    console.log("addNum" + addNum);
  }, 3000);
  const auto_2 = setInterval(function () {
    sudNum--;
    console.log("sudNum" + sudNum);
  }, 3000);
}