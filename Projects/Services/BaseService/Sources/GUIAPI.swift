import Foundation
import Moya

public protocol GUIAPI: TargetType {
    var domain: GUIDomain { get }
    var urlPath: String { get }
    var errorMapping: [Int: Error] { get }
}

extension GUIAPI {
    public var baseURL: URL {
        URL(string: BaseURLInfo.baseUrl) ?? URL(string: "https://www.google.com")!
    }

    public var path: String {
        "\(domain.asEndpoint)/\(urlPath)"
    }

    public var headers: [String : String]? {
        ["Content-Type": "application/json"]
    }

    public var validationType: ValidationType {
        .successCodes
    }

    public var errorMapping: [Int: Error] {
        [
            400: NetworkStatusError.badRequest,
            401: NetworkStatusError.unauthorized,
            403: NetworkStatusError.forbidden,
            404: NetworkStatusError.notFound,
            409: NetworkStatusError.conflict,
            429: NetworkStatusError.manyTooRequest,
            500: NetworkStatusError.internalServerError
        ]
    }
}
