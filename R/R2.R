# 매개변수가 존재하지 않는 함수를 생성
func_1 <- function(){
  print('hello R')
}
#생성된 함수를 호출
func_1()

func_2 <- function(){
  return ('hello R')
}

func_2()

result1 <- func_1()
result2 <- func_2()
result1
result2

#매개변수 존재하는 함수 생성
func_3 <- function(x,y){
  result = x + y
  print(result)
}

result3 = func_3(10,3)

#변수의 종류
#전역 변수
# 함수 내부나 외부 어디서든 사용이 가능한 변수
#지역 변수(휘발성 변수)
# 함수 내부에서 생성된 변수들은 함수 내부에서만 사용이 가능
# 함수의 외부에서 지역 변수를 호출하면 호출이 되지 않는다.
#매개변수
# 함수를 생성할때 인자값이 저장되는 공간
# 지역변수와 마찬가지로 함수 내부에서만 사용이 가능

#매개변수의 개수와 인자의 개수를 다르게 호출하는 경우
func_3(1)
func_3(10,3,2)

#인자 개수가 가변인 경우의 함수를 생성
func_4 <- function(...){
  print(c(...))
}

func_4(1,23)

#함수를 이용해서 커스텀 연산자 생성


"%s%" <- function(input_x,input_y){
  result <- input_x ^ input_y
  return (result)
}

10 %s% 5

#매개변수에 기본값을 설정하여 함수를 생성
func_5 <- function(x,y = 2,z = 3){
  result <- x + y - z
  return (result)
}

func_5(1,5)

func_5(1,z=5)

#매개변수가 2개인 함수를 생성
# 매개변수 사이의 값들을 모두 합하여 되돌려주는 함수 생성
func_6 <- function(start,end){
  n = start
  temp = 0
  while(n <= end){
    temp = temp + n
    n = n+1
  }
  return (temp)
}

func_6(1,100)
min(5,2,3,5)
max(1,34,20,48)

func_7 <- function(val, ...){
  result <- val
  for ( i in c(...)){
    if(result > i){
      result <- i
    } 
  }
  return (result)
}
func_7(7,2,3,4,5)


#평균을 구하는 함수
func_8 <- function(...){
  return(sum(...)/length(c(...)))
}

func_8()


## 데이터프레임 생성
## 벡터데이터들을 이용하여 데이터프레임 생성
name <- c('A','B','C','D','E')
grade <- c(1,3,2,2,1)
data.frame(name,grade) -> student

## 행렬 생성
# cbind() : 열을 추가하는 함수
midturm <- c(70,80,75,60,90)
final <- c(80,90,70,75,85)
score <- cbind(midturm,final)

## 행렬과 데이터프레임을 결합
data.frame(student,score)
cbind(student,score)

## 백터데이터를 생성
gender = c('M','F','F','M','F')

##데이터 프레임과 벡터 데이터와 행렬을 결합
data.frame(student,gender,score)

cbind(student,gender,score) -> students

test_vec = c(1,2,3,4)

# 길이가 다른 벡터데이터를 결합 불가능
cbind(students,test_vec)
data.frame(students,test_vec)


#파생변수를 생성
#데이터프레임에서 새로운 컬럼을 추가
#기존에 있는 데이터에서 분석에서 사용할 데이터가 존재하지 않을때
#데이터들을 가공하여 새로운 데이터를 생성

#기존에 생성했던 벡터데이터들의 합
midturm + final

#데이터프레임에서 특정 컬럼을 선택하여 합
students$midturm + students[['final']] -> total
students
total

#cbind(), data.frame() 함수를 이용하여 파생변수 생성
cbind(students, total)
data.frame(students, total)
students[['total']] <-  total
students

## students에 파생변수를 새엉
### 평균성적을 생성 columns의 이름은 mean
students$mean <- (students$midturm + students$final) / 2
students

#새로운 학생 정보를 추가
data.frame(name = 'F',grade = 1,gender = 'M',midturm = 80, final = 70, total = 150, mean = 75) -> new_student
new_student

#데이터프레임 행을 추가
rbind(students,new_student)
#data.frame9) 함수는 행 추가는 X
data.frame(students,new_student)

data.frame(name = 'G',gender = 'M',grade = 1,midturm = 80, final = 70, total = 150, mean = 75) -> new_student2
rbind(students,new_student2)


#리스트형태 데이터
list_a = list(name = 'test', age= 20)
list_a
list_a$loc = 'seoul'
list_a


# 리스트 데이터에서 value가 벡터 데이터인 경우
list_b = list(name = c('test','test2'), age = c(20,30))
list_b

list_b$name[1]

list_b[['name']][1]
#리스트 2차원데이터에서 'test' 문자열 추출하려면
#리스트에서 key값을 이용하여 데이터를 추출

### 필터
### 데이터프레임명[행의 조건 , 열의 조건]
students[1,]
students[c(1,3),]

##학년이 1학년인 학생의 정보만 출력하자
students[students$grade == 1,]
students$grade == 1 -> flag
students[flag,]
students[!flag,]


## 행과 열의 조건식으로 모두 이용하여 데이터 추출
### 여학생들의 중간, 기말 성적만 추출

students[students$gender == 'F', c('midturm','final')]

students

#중간성적이 80점 이상이고 기말성적이 80점 이상인 학생 정보를 출력
students[students$final >= 80 & students$midturm >=80, ]


## 데이터의 순서를 변경하는 함수


##컬럼의 순서를 변경하는 방법
students[c('grade','name')]

##index의 순서를 변경
students[c(3,2,1,5,4),]

##학년을 기준으로 오름차순 정렬
##order() : 벡터데이터의 데이터들을 오름차순 정렬 위치 출력
order(students$grade)
students[order(students$grade),]


##기말 성적을 기준으로 해서 내림차순 정렬
## order()함수에서 특정 매개변수의 인자 값을 TRUE로 변경하면 내림차순 정렬
order(students$final, decreasing = TRUE)
order(-students$final) -> flag6

students[order(students$final, decreasing = TRUE),]


order(students$name,decreasing = TRUE)
students[flag6,]

 c(1,2,3,4.5)
 
#외부 패키지 설치 
install.packages('dplyr')
#패키지 로드
library(dplyr)

#컬럼의 이름을 변경
#rename(데이터프레임명, 새로운 컬럼의 이름 = 변경할 컬럼의 이름)

students = rename(students, mean_score = mean)

students


## ifelse(조건식, 참인경우 출력값, 거짓인 경우 출력값)


## 조건식을 이용하여 파생변수 생성

ifelse(
  students$mean_score >= 75, 
  'pass',
  'fail'
) -> res
students$result <- res
students



ifelse(
  students$mean_score > 75, 
  'pass',
  ifelse(students$mean_score == 75, 'hold','fail')
) -> res2
