import WebKit
import UIKit

class WebViewViewController: UIViewController {
    
    fileprivate let UnsplashAuthorizeURLString = "https://unsplash.com/oauth/authorize"
   

    @IBOutlet private weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var urlComponents = URLComponents(string: UnsplashAuthorizeURLString)!
        urlComponents.queryItems = [
           URLQueryItem(name: "client_id", value: AccessKey),
           URLQueryItem(name: "redirect_uri", value: RedirectURI),
           URLQueryItem(name: "response_type", value: "code"),
           URLQueryItem(name: "scope", value: AccessScope)
        ]
         let url = urlComponents.url!
        
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    @IBAction private func didTapBackButton(_ sender: Any) {
    }
}
