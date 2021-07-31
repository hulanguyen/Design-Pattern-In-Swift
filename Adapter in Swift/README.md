# Adapter pattern in swift.
## 1. When we should use it? 
- Integrate with incompatible interfaces.
- Make code work after they are designed. 

## 2. When we should not use it?
- When we can change code to compatible with our current design. So, change the code.

## 3. How to implement it in swift? 
- Use the adaptable object.
Ex: 
class FacebookAdapter: Shareable {
    let facebok = Facebook()
    func post(message: String) {
        facebok.fpostMessage(message: message)
    }
}
- Use extension, this is an elegant way to implement adapter in switf without create new object.
Ex: 
extension Twitter: Shareable {
    func post(message: String) {
        twitte(message: message)
    }
}

The key in here that we create "general protocol" then make out incompatible interface confirm to this general protocol. Then use the feature of polymophism for implement code.
# Sample:
Assume that we have code base that we can shared message in social. Then we also want to integarate our app with facebook, twitter, zalo. Eeach flatform have diffrence way to post message. Than how can we achived that and not to change code bases.

Please take look the code in the folder "Before" for the problem and the solution with adapter in folder "After".



