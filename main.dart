import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main(){
  print('가위/바위/보 중 하나를 입력해주세요');

  final String userHand = stdin.readLineSync(encoding: utf8) ?? 'Empty';
  print('당신의 손은 ' + userHand + '입니다');

  const computerHands = ['가위', '바위', '보'];

  final bool isFound = computerHands.contains(userHand);
  if(!isFound){
    print('정상적인 입력값이 아닙니다');
    return;
  }

  final computerHand = computerHands[Random().nextInt(3)];

  print('컴퓨터의 손은 ' + computerHand + '입니다');

  print(judgeResult(userHand, computerHand));
}

String judgeResult(userHand, computerHand){
  const userWin = '당신이 이겼습니다';
  const computerWin = '컴퓨터가 이겼습니다';
  switch(userHand){
    case '가위':
      if(computerHand == '바위'){
        return computerWin;
      }else if(computerHand == '보'){
        return userWin;
      }
    case '바위':
      if(computerHand == '보'){
        return computerWin;
      }else if(computerHand == '가위'){
        return userWin;
      }
    case '보':
      if(computerHand == '가위'){
        return computerWin;
      }else if(computerHand == '바위'){
        return userWin;
      }
  }

  return "비겼습니다";
}