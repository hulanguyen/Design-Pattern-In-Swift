# Bridge pattern in swift.
## 1. When we should use it? 
- Seperate the concenrs, specifically separate interface and the implementation. 
- Make code decoupling and avoid explosion of subclass.


## 2. Pitfalls:
- Seperate commond and specific functionality
- Get more complexity

## 3. How to implement it in swift? 
1. Separtate abstract class and implementation.
2. Create a linked between abstract class and implementation.
3. Inheritent the abstract class and build the specific function with more detail and compose with logic handle in implementor class.
# Sample:
Assume that we have Shape class. Our purpose that we wanted to filled color for eached type shape.

Please take look in the "Before" folder with code implement by using the subclass and lead to explosion subclass.
And the "After" folder to get the solution with Bridge pattern to resolve the solution.



