import UIKit
protocol Shareable {
    func post(message: String)
}

class Lotus: Shareable {
    func post(message: String) {
        print("Lotus sharing : \(message)")
    }
}


public enum PlatForm {
    case lotus
}

public class Sharer {
    let services: [PlatForm: Shareable] =
    [
        .lotus: Lotus(),
    ]
    
    public func shared(message: String, type: PlatForm) {
        services[type]?.post(message: message)
    }
    
    public func sharedAll(message: String) {
        services.forEach { (_, service) in
            service.post(message: message)
        }
    }
}

let sharer = Sharer()
sharer.sharedAll(message: "First post 😇")
