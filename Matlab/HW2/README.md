# HW2



![hw2](https://user-images.githubusercontent.com/31590051/48899450-f651ec00-ee92-11e8-9c19-0b193ca8e64c.jpg)



---


## Matlab을 이용하여 행렬의 eigenvalue와 eigenvectord을 구하는 코드를 짜는 과제


### [조건]

    대칭행렬 사용
    
    Square행렬 사용
    
    가장 큰 eigenvalue, 가장 작은 eigenvalue 중 고르기
    
    
    
### [해결방안]

**대칭행렬** 
    
    => transpose 사용하여 해결, 
    대칭 행렬은 전치행렬과 원래 행렬이 같음을 이용하였습니다. 
    
    
**Square행렬**
    
    => [m,n]=size(A) 함수를 이용하여 해결,
    m과 n의 사이즈가 (행,열의 사이즈)가 같으면 square행렬입니다.
    
    
**선택**
    
    => input을 이용하여 big과 small string을 받아왔고
    그 string을 switch-case문으로 구분하였습니다. 
    
    
**나머지 코드**
    
     => while문을 이용하여 조건이 만족할때 까지 반복하였으며
     if문을 이용하여 eigenvalue를 찾았습니다. 
     나머지는 코드에 다 작성되어있습니다. 
    
    
   
    
    

