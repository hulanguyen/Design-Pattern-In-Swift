# Composite pattern in swift.
## 1. When we should use it? 
- Working with simple and complex objects organised in tree structure. 
- Wanted to treate the simple and complex object uniform.


## 2. Pitfalls:
- Hard to define the common function and variable for both simple and complex object
- Get more complexity

# Sample:
Let have the task that we must sprint the structure detail of each employee and there relationship in company. And get the total budget for each manager. 
////
- HULA  title: CEO age: 33 budget: 31700.0

     - TUAN  title: CFO age: 35 budget: 9000.0

     - HULO  title: CIO age: 20 budget: 12700.0

         - HUPHU  title: HEAD age: 18 budget: 6700.0

             - HUHU  title: TEAM LEADER age: 24 budget: 3700.0

                 - POCA  title: MEMBER age: 15

                 - HUTHI  title: MEMBER age: 16

////
Please take look in the "Before" folder for code implement without composite. And the benenit of refactor code with composite pattern apply for this case in "After" folder. 


