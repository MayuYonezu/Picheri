import UIKit

class LoginViewController: UIViewController, LoginView {

    private var setUpButton: UIBarButtonItem!

    var presenter: LoginPresenter?

    // titleLabel
    private let titleLabel: UILabel = {
      let label = UILabel()
      label.text = "Login"
      label.font = UIFont(name: "Shrikhand-Regular", size: 24)
      label.textColor = UIColor(named: "white") ?? UIColor.gray
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()

    // mailAdressLabel
    private let mailAddressLabel: UILabel = {
      let label = UILabel()
      label.text = "mail address"
      label.font = UIFont.systemFont(ofSize: 12)
      label.textColor = UIColor(named: "white") ?? UIColor.lightGray
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()

    // mailAddressTextFiled
    private let mailAddressTextField: UITextField = {
      let textField = UITextField()
      textField.font = UIFont.systemFont(ofSize: 14)
      textField.translatesAutoresizingMaskIntoConstraints = false
      textField.clearButtonMode = .whileEditing
      textField.keyboardType = .emailAddress
      return textField
    }()

    // mailAddressTextFiledのアンダーライン
    private let mailAddressTextFieldUnderlineView: UIView = {
      let view = UIView()
      view.backgroundColor = UIColor(named: "white") ?? UIColor.gray
      view.translatesAutoresizingMaskIntoConstraints = false
      return view
    }()

    // passWordLabel
    private let passWordLabel: UILabel = {
      let label = UILabel()
      label.text = "pass word"
      label.font = UIFont.systemFont(ofSize: 12)
      label.textColor = UIColor(named: "white") ?? UIColor.lightGray
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()

    // passWordTextFiled
    private let passWordTextField: UITextField = {
      let textField = UITextField()
      textField.font = UIFont.systemFont(ofSize: 14)
      textField.translatesAutoresizingMaskIntoConstraints = false
      textField.isSecureTextEntry = true
      textField.clearButtonMode = .whileEditing
      return textField
    }()

    // mailAddressTextFiledのアンダーライン
    private let passWordTextFieldUnderlineView: UIView = {
      let view = UIView()
      view.backgroundColor = UIColor(named: "white") ?? UIColor.gray
      view.translatesAutoresizingMaskIntoConstraints = false
      return view
    }()

    // nameLabel
    private let nameLabel: UILabel = {
      let label = UILabel()
      label.text = "name"
      label.font = UIFont.systemFont(ofSize: 12)
      label.textColor = UIColor(named: "white") ?? UIColor.lightGray
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()

    // titleTextFiled
    private let nameTextField: UITextField = {
      let textField = UITextField()
      textField.font = UIFont.systemFont(ofSize: 14)
      textField.translatesAutoresizingMaskIntoConstraints = false
      return textField
    }()

    // titleTextFiledのアンダーライン
    private let nameTextFieldUnderlineView: UIView = {
      let view = UIView()
      view.backgroundColor = UIColor(named: "white") ?? UIColor.gray
      view.translatesAutoresizingMaskIntoConstraints = false
      return view
    }()

    // LoginButton
    private let loginButton: UIButton = {
      let button = UIButton()
      button.setTitle("Login", for: .normal)
      button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
      button.setTitleColor(UIColor(named: "pink"), for: .normal)
      button.backgroundColor = UIColor(named: "white")
      button.translatesAutoresizingMaskIntoConstraints = false
      button.layer.cornerRadius = 22.5
      button.layer.shadowColor = UIColor(named: "pink")?.cgColor
      button.layer.shadowOpacity = 0.5
      button.layer.shadowOffset = CGSize(width: 2, height: 2)
      button.layer.shadowRadius = 5
      return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = LoginPresenterImpl(view: self)
        setUpContents()
        setUpNavigation()
    }


    func setUpContents() {
      view.addSubview(titleLabel)
      view.addSubview(mailAddressLabel)
      view.addSubview(mailAddressTextField)
      view.addSubview(mailAddressTextFieldUnderlineView)
      view.addSubview(passWordLabel)
      view.addSubview(passWordTextField)
      view.addSubview(passWordTextFieldUnderlineView)
      view.addSubview(loginButton)
      setUpLoginConstraints()
    }

    private func setUpConstraints() {
      NSLayoutConstraint.activate([
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
      ])
      NSLayoutConstraint.activate([
        mailAddressLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
        mailAddressLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
      ])
      NSLayoutConstraint.activate([
        mailAddressTextField.topAnchor.constraint(equalTo: mailAddressLabel.bottomAnchor, constant: 3),
        mailAddressTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        mailAddressTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
      ])
      NSLayoutConstraint.activate([
        mailAddressTextFieldUnderlineView.topAnchor.constraint(equalTo: mailAddressTextField.bottomAnchor, constant: 5),
        mailAddressTextFieldUnderlineView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        mailAddressTextFieldUnderlineView.trailingAnchor.constraint(equalTo: mailAddressTextField.trailingAnchor),
        mailAddressTextFieldUnderlineView.heightAnchor.constraint(equalToConstant: 1)
      ])
    }

    private func setUpSignUpConstraints() {
      view.addSubview(mailAddressLabel)
      view.addSubview(mailAddressTextField)
      view.addSubview(mailAddressTextFieldUnderlineView)
      view.addSubview(passWordLabel)
      view.addSubview(passWordTextField)
      view.addSubview(passWordTextFieldUnderlineView)
      view.addSubview(nameLabel)
      view.addSubview(nameTextField)
      view.addSubview(nameTextFieldUnderlineView)
      setUpConstraints()

      NSLayoutConstraint.activate([
        nameLabel.topAnchor.constraint(equalTo: mailAddressTextFieldUnderlineView.bottomAnchor, constant: 30),
        nameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
      ])

      NSLayoutConstraint.activate([
        nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 3),
        nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
      ])

      NSLayoutConstraint.activate([
        nameTextFieldUnderlineView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 5),
        nameTextFieldUnderlineView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        nameTextFieldUnderlineView.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
        nameTextFieldUnderlineView.heightAnchor.constraint(equalToConstant: 1)
      ])

      NSLayoutConstraint.activate([
        passWordLabel.topAnchor.constraint(equalTo: nameTextFieldUnderlineView.bottomAnchor, constant: 30),
        passWordLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
      ])

      NSLayoutConstraint.activate([
        passWordTextField.topAnchor.constraint(equalTo: passWordLabel.bottomAnchor, constant: 3),
        passWordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        passWordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
      ])

      NSLayoutConstraint.activate([
        passWordTextFieldUnderlineView.topAnchor.constraint(equalTo: passWordTextField.bottomAnchor, constant: 5),
        passWordTextFieldUnderlineView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        passWordTextFieldUnderlineView.trailingAnchor.constraint(equalTo: passWordTextField.trailingAnchor),
        passWordTextFieldUnderlineView.heightAnchor.constraint(equalToConstant: 1)
      ])

      NSLayoutConstraint.activate([
        loginButton.topAnchor.constraint(equalTo: passWordTextFieldUnderlineView.bottomAnchor, constant: 50),
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
        loginButton.widthAnchor.constraint(equalToConstant: 320),
        loginButton.heightAnchor.constraint(equalToConstant: 45)
      ])
    }

    private func setUpLoginConstraints() {
      view.addSubview(mailAddressLabel)
      view.addSubview(mailAddressTextField)
      view.addSubview(mailAddressTextFieldUnderlineView)
      view.addSubview(passWordLabel)
      view.addSubview(passWordTextField)
      view.addSubview(passWordTextFieldUnderlineView)
      view.addSubview(loginButton)
      setUpConstraints()
      NSLayoutConstraint.activate([
        passWordLabel.topAnchor.constraint(equalTo: mailAddressTextFieldUnderlineView.bottomAnchor, constant: 30),
        passWordLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
      ])
      NSLayoutConstraint.activate([
        passWordTextField.topAnchor.constraint(equalTo: passWordLabel.bottomAnchor, constant: 3),
        passWordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        passWordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
      ])
      NSLayoutConstraint.activate([
        passWordTextFieldUnderlineView.topAnchor.constraint(equalTo: passWordTextField.bottomAnchor, constant: 5),
        passWordTextFieldUnderlineView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        passWordTextFieldUnderlineView.trailingAnchor.constraint(equalTo: passWordTextField.trailingAnchor),
        passWordTextFieldUnderlineView.heightAnchor.constraint(equalToConstant: 1)
      ])
      NSLayoutConstraint.activate([
        loginButton.topAnchor.constraint(equalTo: passWordTextFieldUnderlineView.bottomAnchor, constant: 50),
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
        loginButton.widthAnchor.constraint(equalToConstant: 320),
        loginButton.heightAnchor.constraint(equalToConstant: 45)
      ])
    }

    func setUpNavigation() {
      // サインアップボタンを作成
        setUpButton = UIBarButtonItem(title: "signup",
                                      style: .plain,
                                      target: self,
                                      action: #selector(setUpButtonTapped))

      // カスタムフォントを適用したいタイトルフォントを設定
      let font = UIFont.systemFont(ofSize: 12) // フォントサイズを指定
      let normalAttributes: [NSAttributedString.Key: Any] = [
        .font: font,
        .foregroundColor: UIColor(named: "white") ?? UIColor.white // カスタムのボタンタイトル色
      ]
      setUpButton.setTitleTextAttributes(normalAttributes, for: .normal)
      let highlightedAttributes: [NSAttributedString.Key: Any] = [
        .font: font,
        .foregroundColor: UIColor(named: "whtie") ?? UIColor.white // カスタムのタップ時のタイトル色
      ]
      setUpButton.setTitleTextAttributes(highlightedAttributes, for: .highlighted)
      // ボタンをナビゲーションバーに追加
      navigationItem.rightBarButtonItem = setUpButton
    }

    private func resetUpView() {
      mailAddressLabel.removeFromSuperview()
      mailAddressTextField.removeFromSuperview()
      mailAddressTextFieldUnderlineView.removeFromSuperview()
      passWordLabel.removeFromSuperview()
      passWordTextField.removeFromSuperview()
      passWordTextFieldUnderlineView.removeFromSuperview()
      nameLabel.removeFromSuperview()
      nameTextField.removeFromSuperview()
      nameTextFieldUnderlineView.removeFromSuperview()
    }

    // ボタンがタップされたときのアクション
    @objc private func setUpButtonTapped() {
        resetUpView()
        if let currentTitle = setUpButton.title {
            if currentTitle == "login" {
                presenter?.updateTitleAndButton(isLogin: true)
                setUpContents()
            } else {
                presenter?.updateTitleAndButton(isLogin: false)
                setUpSignUpConstraints()
            }
        }
    }

    func updateTitleAndButton(title: String) {
        titleLabel.text = title
    }

    func setButtonTitle(title: String) {
        setUpButton.title = title
    }
}

