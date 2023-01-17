import Foundation

public enum GUIDomain: String {
    case `none` = ""
}

public extension GUIDomain {
    var asEndpoint: String {
        "/\(self.rawValue)"
    }
}
