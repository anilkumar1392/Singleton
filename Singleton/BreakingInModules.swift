//
//  BreakingInModules.swift
//  Singleton
//
//  Created by mac on 14/08/21.
//

import Foundation
import UIKit

/*
  Stage 1
    we are not completely safe from change but is much more flexible than previous one.
 
    Now to make little bit more flexible, reusbale and not breaking the clients.
    What we can do?
    Solution :
    Inverting the dependency
    
    INstead of module depending on concrete api client, Concrete api clinet depends on module.
 
 
    So conatain logic in modeule and details depend on features (In this detail is api client)
 */


/*

// Api Module
class ApiClient {
    static let shared = ApiClient()
    private init(){}
    
    func execute(_ : URLRequest, onComplition: (Data) -> Void) {}
}

//Login Module
struct LoggedInUser {}

extension ApiClient {
    func login(complition: (LoggedInUser) -> Void){}
}

class LoginVC: UIViewController {
    var api =  ApiClient.shared
}


// Feed Module
struct FeedItem {}
extension ApiClient {
    func loadFeeds(complition: ([FeedItem]) -> Void){}
}

class FeedVC: UIViewController {
    var api =  ApiClient.shared
}

*/
