import UIKit
protocol Shareable {
    func post(message: String)
}

class Lotus: Shareable {
    func post(message: String) {
        print("Lotus sharing : \(message)")
    }
}
// Use adatable object

class FacebookAdapter: Shareable {
    let facebok = Facebook()
    func post(message: String) {
        facebok.fpostMessage(message: message)
    }
}

//use extentsion
extension Twitter: Shareable {
    func post(message: String) {
        twitte(message: message)
    }
}

extension Zalo: Shareable {
    func post(message: String) {
        zpost(message: message, completion: nil)
    }
}

public enum PlatForm {
    case lotus
    case facebook
    case twitter
    case zalo
}

public class Sharer {
    let services: [PlatForm: Shareable] =
    [
        .lotus: Lotus(),
        .facebook: FacebookAdapter(),
        .twitter: Twitter(),
        .zalo: Zalo()
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
sharer.sharedAll(message: "Hellow world 😇")
