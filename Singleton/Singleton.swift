//
//  Singleton.swift
//  Singleton
//
//  Created by mac on 14/08/21.
//

import Foundation
import UIKit

/*
struct LoggedInUser {}
struct FeedItem {}

// Singletons with Capital S.
class ApiClient {
    private init(){}
    static let shared = ApiClient()
    
    func login(complition: (LoggedInUser) -> Void) {}
    func loadFeed(complition: ([FeedItem]) -> Void) {}
  }


let api = ApiClient.shared

// singletons witn small s.
let session = URLSession.shared
let newSession = URLSession(configuration: .default)

// we can have both the shared one and the congigurable.

/*
class LoginViewController {
    func didtapLoginButton(){
        ApiClient.shared.login { (user) in
            // Show next screen
        }
    }
}*/


// Above written code is very hard to test.

class MockApiClinet: ApiClient {
//    override init() {
//    }
}


//One way to test above code
class LoginViewController {
    var api = ApiClient.shared
    func didtapLoginButton(){
        api.login { (user) in
            // Show next screen
        }
    }
}


//Other Way Make shared instacne mutable but it breaks singleton pattern.
//Doing this this is not single any more.
//ApiClient.shared = MockApiClinet()

//Muatble global state. is not singleton any more.


//Now extens some feature

class FeedViewController: UIViewController{
    var api = ApiClient.shared

    override func viewDidLoad(){
        super.viewDidLoad()
        api.loadFeed { feed in
            //Show Feed
        }
    }
}


//Problem with this architecture.

/*
    Every time we add new feature we need to add new method in singleton class.
    So problem is Login does not care about feed.
    and feed does not care about login
    and same for for new features added.
 
    Every tiem we add new method
    we need to recomplie and reploy all other module.
 
    Every module sharing a concrete api type in the middle.
 
    If we want to resue.
    we have source code dependency here.
    So to reuse login we need to move api client with it.
 */


/*
  Every time we add mew module we break other one.
  Solution :- Use extensions
 */

*/
