import Combine
import UIKit

open class BaseViewController<VM: BaseViewModel>: UIViewController {
    public let viewModel: VM
    public var bag = Set<AnyCancellable>()
    public var bounds: CGRect {
        screenBounds()
    }

    public init(viewModel: VM) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addView()
        setLayout()
        configureViewController()
        configureNavigation()
        bind()
    }

    open func addView() {}
    open func setLayout() {}
    open func configureViewController() {}
    open func configureNavigation() {}
    open func bind() {}

    private func screenBounds() -> CGRect {
        var parent = self.parent
        var lastParent = parent

        while parent != nil {
            lastParent = parent
            parent = parent?.parent
        }

        guard let bounds = lastParent?.view.window?.windowScene?.screen.bounds else {
            return .init()
        }
        return bounds
    }
}
