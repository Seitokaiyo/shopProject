//
//  NetworkService.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 14.03.2023.
//

import Foundation
import FirebaseAuth

class NetworkService {
    //Регистрация
    class func singIn(email: String, password: String, complition: @escaping(ResponseBody) -> ()){
        Auth.auth().createUser(withEmail: email, password: password){ result, error in
            if error != nil {
                complition(ResponseBody(id: 0, state: false, error: AppErrorService.Auth.authError))
            }
            
            if result != nil {
                    complition(ResponseBody(id: 0, state: true, error: AppErrorService.Empty.success))
            }
        }
    }
    
    //Авторизация
    class func singUp(email: String, password: String, complition: @escaping(ResponseBody) -> ()){
        Auth.auth().signIn(withEmail: email, password: password){ result, error in
            if error != nil {
                complition(ResponseBody(id: 0, state: false, error: AppErrorService.Auth.authError))
            }
            
            if result != nil {
                complition(ResponseBody(id: 0, state: true, error: AppErrorService.Empty.success))
            }
        }
    }
    
    //Проверка Авторизации
    class func cheakAuth(complition: @escaping(ResponseBody) -> ()){
        Auth.auth().addStateDidChangeListener { _ , user in
            guard user != nil else {
                return complition(ResponseBody(id: 0, state: false, error: AppErrorService.Empty.empty))
            }
            
            complition(ResponseBody(id: 0, state: true, error: AppErrorService.Empty.empty))
        }
    }
    
}

class ResponseBody: Identifiable, Codable {
    var id: Int
    var state: Bool
    var error: String
                    
    init(
        id: Int,
        state: Bool,
        error: String
    ){
        self.id = id
        self.state = state
        self.error = error
    }
}
