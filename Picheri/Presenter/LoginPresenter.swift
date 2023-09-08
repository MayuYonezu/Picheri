protocol LoginPresenter {
    func updateTitleAndButton(isLogin: Bool)
}

protocol LoginView: AnyObject {
    func updateTitleAndButton(title: String)
    func setButtonTitle(title: String)
}

class LoginPresenterImpl: LoginPresenter {
    
    weak var view: LoginView?

    init(view: LoginView) {
        self.view = view
    }

    func updateTitleAndButton(isLogin: Bool) {
        if isLogin {
            view?.updateTitleAndButton(title: "Login")
            view?.setButtonTitle(title: "signup")
        } else {
            view?.updateTitleAndButton(title: "Sign up")
            view?.setButtonTitle(title: "login")
        }
    }
}
