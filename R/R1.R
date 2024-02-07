#변수 생성
a <- 10
20 -> a
a = 30
print(a)

# 벡터 데이터
# c() 함수를 이용해서 생성
# 일반적인 변수에는 데이터가 1개 대입
# 벡터 데이터는 여러개의 데이터를 하나의 변수에 대입

d <- c(1,2,3,4,5)
e <- c('test1','test2','test3')
print(d)
print(e)

f <- 1:10
print(f)

print(d[2])

print(e[1])

#행렬 데이터 생성
#2차원 데이터

arr_X = array(1:20, dim=c(4,5))
print(arr_X)

arr_y = array(1:20, dim=c(4,4))
print(arr_y)

arr_z = array(1:20, dim=c(4,6)) #구간 반복 됨
print(arr_z)


a = "test"
print(a)

# 리스트 형태의 데이터 생성
# 벡터 데이터에서 index(위치) 값 대신에 key 값을 지정
# 벡터 데이터에서 순서대로 데이터를 나열해야 되는 데이터
# 리스트 데이터는 순서와 상관없이 key값을 기준으로 출력이 가능하다

list_a <- list(name = 'test', age = 20, phone = '01012345678')

print(list_a)
print(list_a['name'])
print(list_a['phone'])


b = c('test',20,'01012345678')
print(b)
print(b[1])


#벡터와 리스트의 차이는 index와 key의 차이
#행렬과 데이터 프레임의 차이도 index와 key의 차이
#데이터 프레임 생성
#2차원 데이터를 생성하는 과정
#인덱스와 컬럼을 기준으로 데이터를 생성
df = data.frame(
  name = c('test1','test2','test3'),
  age = c(20,30,40),
  phone = c('01012345555','01022222222','01033333333')
)

print(df)

#벡터의 개수를 다르게 데이터프레임을 생성
#벡터 데이터의 개수가 다르면 에러가 발생
df2 = data.frame(
  name = c('test','test2','test3'),
  age = c(20,30)
)

# 연산자

#산술 연산자
x <- 10
y <- 3


print(x + y)
print(x - y)
print(x * y)
print(x ^ y)
print(x / y)
print(x %% y)
print(x %/% y)

# 비교연산자
# 두개의 데이터를 비교하여 결과 값은 논리값으로 출력(참/거짓)으로 출력
z <- 5
print(x == y)
print(x != y)
print(x %in% y)
print(x > y)
print(x < y)

a = 1; b = 2

#논리 연산자
#부정
print(!TRUE)
#and
print(TRUE&FALSE)
print(TRUE&TRUE)
#or
print(TRUE|FALSE)
print(TRUE|TRUE)
print(FALSE|FALSE)

#조건문(if문)

x <- 10
if(x > 5){
  print('5보다 큽니다')
}

if(x >10){
  print('10보다 큽니다')
}
else{
  print('10보다 작거나 같습니다')
}

#조건이 여러개인 조건문 생성
score <- 54

if(score >= 90 ){
  #SCORE가 90점 이상인 경우
  print('A')
}else if(score >= 80){
  #SCORE 90점 미안 80점 이상인 경우
  print('B')
}else if(score >= 70){
  #SCORE 80점 미만 70점 이상인 경우
  print('c')
}else{
  #70점 미만인 경우
  print('F')
}


#if 조건식에 조건식이 2개 이상인 경우
id <- 'test'
pass <- '1111'

if(id == 'test' & pass == '1234'){
  print('login 성공')
}else{
  print('login 실패')
}

#which문
#벡터데이터에서 조건식이 일치하는 데이터의 위치 값을 출력
name <- c('test','test2','test3')

which(name == 'test2')
  
if( name[1] == 'test2'){
  print(1)
}

if(name[2] == 'test2'){
  print(2)
}

if(name[3] == 'test2'){
  print(2)
}

which(name != 'test2')
which(name == 'test5')

#반복문

#for문
#벡터데이터의 원소의 개수만큼 반복 실행하는 구문

#while문
array_a = 1:1000
sum <- 0
for(i in array_a){
  sum = sum + i
}
sum

#while문
#초기 시작값을 지정하고 해당하는 값을 반복 실행할때마다 증감 시켜
#조건식이 거짓이 될때 까지 반복 실행
result <- 0
start <- 1
while(start<11){
  result = result + start
  start = start + 1
}
result
  
  
  
  
for( i in 2:9){
  for( j in 1:9){
    print(i * j)
  }
  
}  

count = 0
for(i in 1:6){
  for(j in 1:6){
    if((i+j)%%5 == 0){
      #print(c(i,j))
      count = count + 1
    }
  }
}
count



#break문
#반복문을 강제로 종료

for( i in 1:100){
  if (i > 3){
    break
  }
  print(i)
}

#1부터 100까지의 합계중 누적합 중에 
#누적합의 값이 2000이 넘어가는 부분에 숫자 몇일까? 합계는 몇일까?
result = 0
for(i in 1:100){
  result = result + i
  if(result >= 2000)
  {
    print(i)
    break;
  }
}
print(result)

#1부터 1씩 증가시킨 데이터를 누적합읋 하는 도중
#누적합이 5만이 넘어가는 최초의 순간은 언제인가?

i <- 1
result = 0
while(1){
  result = result + i
  
  if(result >= 50000){
    break;
  }
  
  i = i + 1
}

# 1부터 100까지 숫자 중 짝수의 누적합 구하기
result = 0
for(i in 1:100){
  if(i %%2 == 0){
     result = result + i
   }
}
print(result)

i = 2
result <- 0

while(TRUE){
  
  if(i > 100){
    break;
  }
  if(i %% 2 == 0){
    result = result + i
  }
  i = i+2
}
print(result)

#비순서형 벡터 데이터를 이용한 for문
array_a = c('kim','park','lee')
for ( i in array_a){
  print(i)
}

i <- 1
while(i<=3){
  print(array_a[i])
  i = i +1 
}

#next 반복문으로 되돌아 간다. 다음으로 넘어간다
for(i in 1:10){
  if(i<5){
    next
  }
  print(i)
}

result = 0
for ( i in 1:100){
  if(i %% 2 == 1){
    next;
  }
  result = result + i
}
print(result)