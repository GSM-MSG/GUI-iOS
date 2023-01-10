import Combine
import Foundation
import Moordinator

public protocol BaseViewModel {
    associatedtype Input
    associatedtype Output

    var router: any Router { get }

    func transform(_ input: Input) -> Output
}
