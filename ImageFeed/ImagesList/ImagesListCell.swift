import UIKit

final class ImagesListCell: UITableViewCell {
    @IBOutlet private var cellGradientView: UIView!
    @IBOutlet private var dateLabel: UILabel!
    @IBOutlet private var cellImage: UIImageView!
    @IBOutlet private var likeButton: UIButton!
    
    static let reuseIdentifier = "ImagesListCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let gradient = CAGradientLayer()
        gradient.frame = cellGradientView.bounds
        gradient.colors = [UIColor.ypGradientOne.cgColor, UIColor.ypGradientTwo.cgColor]
        cellGradientView.layer.insertSublayer(gradient, at: 0)
        cellGradientView.backgroundColor = nil
        cellGradientView.clipsToBounds = true
        cellGradientView.layer.cornerRadius = 16
        cellGradientView.layer.maskedCorners = [.layerMaxXMaxYCorner,  .layerMinXMaxYCorner]
    }
    
    func configCell(imageCell: UIImage, imageButton: UIImage?, dateString: String) {
        cellImage.image = imageCell
        dateLabel.text = dateString
        likeButton.setImage(imageButton, for: .normal)
    }
    
}
