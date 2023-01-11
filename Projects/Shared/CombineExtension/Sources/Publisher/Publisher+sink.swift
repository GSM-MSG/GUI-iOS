import Combine

public extension Publisher {
    func sink<Object: AnyObject>(
        with object: Object,
        receiveCompletion: @escaping ((Object, Subscribers.Completion<Failure>) -> Void),
        receiveValue: @escaping ((Object, Output) -> Void)
    ) -> AnyCancellable {
        self.sink { [weak object] completion in
            guard let object = object else { return }
            receiveCompletion(object, completion)
        } receiveValue: { [weak object] value in
            guard let object = object else { return }
            receiveValue(object, value)
        }
    }
}
