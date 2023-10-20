import UIKit

class ProfileViewController: UIViewController {
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var loginNameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var logoutButton: UIButton!
  
    override func viewDidLoad() {
    }
    
    @IBAction func didTapLogoutButton(_ sender: Any) {}
    
}
