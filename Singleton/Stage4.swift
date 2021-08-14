//
//  Stage4.swift
//  Singleton
//
//  Created by mac on 14/08/21.
//

import Foundation
import UIKit


struct LoggedInUser {}
struct FeeddItem {}

// Main Module
extension ApiClient {
    func login(complition: (LoggedInUser) -> Void){}
}

extension ApiClient {
    func loadFeeds(complition: ([FeeddItem]) -> Void){}
}

// Api Module
class ApiClient {
    static let shared = ApiClient()
    private init(){}
    
    func execute(_ : URLRequest, onComplition: (Data) -> Void){}
}


// Login Module
class LoginViewController: UIViewController {
    var login: (((LoggedInUser) -> Void) -> Void)?
    func didTapLoginButton(){
        login? { user in
            // Login user
        }
    }
}


// Feed module
class FeedViewController: UIViewController {
    var loadFeed: ((([FeeddItem]) -> Void) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        loadFeed? { feeds in
            // Feeds
        }
    }
}


