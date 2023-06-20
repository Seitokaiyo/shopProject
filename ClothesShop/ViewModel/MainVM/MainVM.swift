//
//  MainVM.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 21.02.2023.
//

import Foundation

//ViewModel
class MainViewModel: ObservableObject {
    @Published var juliet: HumanDataModel = HumanDataModel(id: 0, name: "Juliet", age: 27)
}
