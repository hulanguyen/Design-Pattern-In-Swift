import Foundation

public class Zalo {
    public init() {}
    
    public func zpost(message: String, completion: (() ->())?) {
        print("Zalo post: \(message)")
        completion?()
    }
}
