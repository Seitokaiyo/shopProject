//
//  CategoryCollectionButtonModel.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 02.03.2023.
//

import Foundation
import SwiftUI

struct CategoryCollectionButtonModel: Identifiable {
    var id: Int
    var title: String
    var description: String?
    var category: CategoryName
    var style: CategoryCollectionButtonEnum = .notSelected
}

struct CategoryCollectionButtonStyleModel {
    var foregrounColor: Color = AppColor.black
    var backgroundColor: Color = AppColor.gray.opacity(0.2)
}

enum CategoryCollectionButtonEnum {
    case selected
    case notSelected
    
    var state: CategoryCollectionButtonStyleModel {
        switch self {
        case .selected: return CategoryCollectionButtonStyleModel(
            foregrounColor: AppColor.white,
            backgroundColor: AppColor.black)
        case .notSelected: return CategoryCollectionButtonStyleModel()
        }
    }
}
