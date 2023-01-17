import Foundation

public enum NetworkStatusError: Error {
    case badRequest
    case unauthorized
    case forbidden
    case notFound
    case conflict
    case manyTooRequest
    case internalServerError
}

extension NetworkStatusError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .badRequest:
            return "잘못된 요청입니다."

        case .unauthorized:
            return "인증되지 않았습니다."

        case .forbidden:
            return "접근 권한이 없습니다."

        case .notFound:
            return "대상을 찾을 수 없습니다."

        case .conflict:
            return "중복된 객체가 있습니다."

        case .manyTooRequest:
            return "너무 많은 요청을 보냈습니다."

        case .internalServerError:
            return "서버에 문제가 생겼습니다."
        }
    }
}
