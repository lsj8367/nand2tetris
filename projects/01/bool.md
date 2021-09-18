# 불 논리

## NAND 게이트

Nand 게이트는 유니버셜 로직 게이트라고도 부르는데

이 게이트 하나만으로 모든 바이너리 동작을 제어할 수가 있다.

Nand게이트는 다음과 같은 불 함수를 계산한다.

| a | b | Nand(a, b) |
|:----:|----|:----:|
|0|1|0|
|0|1|1|
|1|0|1|
|1|1|0|

## 기본 논리 게이트

### Not

단일 입력 Not게이트 `Converter`라고 불리며 input값의

반대값으로 Output을 내준다.

| in | out |
|:----:|:----:|
|0|1|
|1|0|

### And

And는 곱연산으로서, 입력 값이 둘다 1일 경우에만 1을 출력해준다.

| a | b | And(a, b) |
|:----:|:----:|:----:|
|0|0|0|
|0|1|0|
|1|0|0|
|1|1|1|

### Or

Or는 합연산으로, 입력값 2개중 1개가 1이라면 1을 출력해준다.

| a | b | Or(a, b) |
|:----:|:----:|:----:|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|1|

### Xor

`배타적 논리합` 이라고 불리며, 두 입력값이 서로 다를 경우 1

그렇지 않으면 0을 출력한다.

| a | b | Xor(a, b) |
|:----:|:----:|:----:|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|0|

### 멀티플렉서(Multiplexer)

멀티플렉서는 3입력 게이트로 selector 비트를 이용하여

나머지 두개 데이터 비트 입력중 하나를 선택.

| a | b | sel | Mux(a, b) |
|:----:|:----:|:----:|:----:|
|0|0|0|0|
|0|1|0|0|
|1|0|0|1|
|1|1|0|1|
|0|0|1|0|
|0|1|1|1|
|1|0|1|0|
|1|1|1|1|

![image](https://user-images.githubusercontent.com/74235102/133886757-6efeda64-8309-4a89-a8b2-48e384046fe5.png)

### 디멀티플렉서

이름만봐도 멀티플렉서의 정반대 기능을 수행한다고 알 수 있다.

디멀티플렉서는 선택한 비트에 따라 출력선 중 하나를 선택해 입력 신호를 보낸다.

| sel | a | b |
|:----:|:----:|:----:|
|0|in|0|
|1|0|in|

![image (1)](https://user-images.githubusercontent.com/74235102/133886762-2ae5cd2f-50cb-4629-8670-93fc2c475a81.png)