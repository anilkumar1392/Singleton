//
//  FinalStage.swift
//  Singleton
//
//  Created by mac on 14/08/21.
//

import Foundation

typealias loginResponseComplition = (LoggedInUser) -> Void

struct LoggedInUser {
    var name: String
}
struct FeeddItem {}

class ApiClient {
    static let shared = ApiClient()
    private init(){}
}

// Main Module
protocol LoginService {
    func login(complition: loginResponseComplition)
}

struct LoginAdapter: LoginService {
    func login(complition: loginResponseComplition) {
        complition(LoggedInUser(name: "Anil"))
    }
}

struct LoginViewModel{
    var loginService: ((loginResponseComplition) -> Void)?
    func loadUser(){
        loginService? { user in
            print(user)
        }
    }
}

struct LoginComposer {
    func loginComposedWith(userLoader: LoginService){
        var vm = LoginViewModel()
        vm.loginService = userLoader.login(complition:)
        vm.loadUser()
    }
}

