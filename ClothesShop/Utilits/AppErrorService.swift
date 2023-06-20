//
//  AppErrorService.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 14.03.2023.
//

import Foundation

enum AppErrorService {
    enum Auth {
        static let errorEmail = "Неправильная почта"
        static let errorPassword = "Неправильная пароль"
        static let regError = "Ошибка регистрации"
        static let authError = "Ошибка авторизации"
        static let userNotFindError = ""
    }
    
    enum Empty {
        static let empty = ""
        static let success = "Отлично!"
    }
}
