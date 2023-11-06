import UIKit

class ProfileViewController: UIViewController {
    // MARK: - Private Properties
    private var avatarImageView: UIImageView?
    private var descriptionLabel: UILabel?
    private var loginNameLabel: UILabel?
    private var nameLabel: UILabel?
    private var logoutButton: UIButton?
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        initImage()
        initDescriptionLabel()
        initLoginNameLabel()
        initNameLabel()
        initLogoutButton()
    }
    
    // MARK: - Private Methods
    private func initImage() {
        let image = UIImage(named: "avatar")
        let imageView = UIImageView(image: image)
        self.avatarImageView = imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        
        imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
    }
    
    private func initDescriptionLabel() {
        guard let avatarImageView else { return }
        let labelView = UILabel()
        self.descriptionLabel = labelView
        labelView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelView)
        labelView.text = "Екатерина Новикова"
        labelView.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        labelView.textColor = .ypWhite
        labelView.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 8).isActive = true
        labelView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
    }
    
    private func initLoginNameLabel() {
        guard let descriptionLabel else { return }
        let labelView = UILabel()
        self.loginNameLabel = labelView
        labelView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelView)
        labelView.text = "@ekaterina_nov"
        labelView.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        labelView.textColor = .ypGray
        labelView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 8).isActive = true
        labelView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
    }
    
    private func initNameLabel() {
        guard let loginNameLabel else { return }
        let labelView = UILabel()
        self.nameLabel = labelView
        labelView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelView)
        labelView.text = "Hello, world!"
        labelView.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        labelView.textColor = .ypWhite
        labelView.topAnchor.constraint(equalTo: loginNameLabel.bottomAnchor, constant: 8).isActive = true
        labelView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
    }
    
    private func initLogoutButton() {
        guard let avatarImageView else { return }
        guard let image = UIImage(named: "Exit") else { return }
        let buttonView = UIButton.systemButton(with: image, target: self, action: #selector(didTapLogoutButton))
        buttonView.tintColor = .ypRed
        self.logoutButton = buttonView
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonView)
        buttonView.widthAnchor.constraint(equalToConstant: 44).isActive = true
        buttonView.heightAnchor.constraint(equalToConstant: 44).isActive = true
        buttonView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant:  -16).isActive = true
        buttonView.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor).isActive = true
    }
    
    @objc private func didTapLogoutButton() {}
}
