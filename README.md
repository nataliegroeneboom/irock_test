# README

This README would normally document whatever steps are necessary to get the
application up and running.
## Answers

### 2.
Run:
````
```
rails 'numbers:pass'
```
````

### 3.
Run:
````
```
rails 'replace:the_string_with_numbers[hello45test]'
```
````


### 4.a 
````
```
SELECT employee_id, MAX(amount) as max_amount
 FROM salaries
GROUP_BY employee_id;
```
````


### 4.b
````
```
SELECT organisation_id, AVG(amount) as average_amount
 FROM salaries
GROUP_BY employee_id;
```
````


### 5.
````
```
function f(x,y){
    return x+y
}

function(x)(y){

return function(y){
    return x+y
}
}
```
````

### 6. 
````
```
 rails 'sum:sum_the_integer[512]'
```
````
