//
//  MainGrideModels.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 02.03.2023.
//

import Foundation
import SwiftUI

struct MainGrideDateModel {
    var id: Int?
    var image: Image = Image(AppImage.CompanyLogo.logoPng)
    var title: String?
    var categoryId: Int?
    var categoryValue: CategoryName?
    var description: String! = ""
    var shortDescription: String! = ""
    var like: Bool = false
    var price: String = "140 ₽"
}
