//
//  ButtonModels.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 23.02.2023.
//

import Foundation
import SwiftUI

enum ButtonModel {
    case ok
    case back
    case next
    case magazin
    case auth
    case reg
    
    var title: String {
        switch self {
        case .ok: return "Ok"
        case .back: return "Назад"
        case .next: return "Далее"
        case .magazin: return "Добавить"
        case .auth: return "Авторизация"
        case .reg: return "Регистрация"
        }
    }
}

enum ButtonState {
    case activeBlack
    case activeWhite
    case disable
    
    var style: ButtonStyle {
        switch self {
        case .activeBlack: return ButtonStyle(id: 0,
                                              background: AppColor.black,
                                              foregroundColor: AppColor.white,
                                              borderColor: AppColor.black)
        case .activeWhite: return ButtonStyle(id: 0,
                                              background: AppColor.white,
                                              foregroundColor: AppColor.black,
                                              borderColor: AppColor.black)
        case .disable: return ButtonStyle(id: 0,
                                          background: AppColor.gray,
                                          foregroundColor: AppColor.white,
                                          borderColor: AppColor.gray)
        }
    }
}

struct ButtonStyle: Identifiable {
    var id: Int
    var background: Color
    var foregroundColor: Color
    var borderColor: Color
}
