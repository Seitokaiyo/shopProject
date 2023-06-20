//
//  MainGrideVM.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 02.03.2023.
//

import Foundation
import SwiftUI

class MainGrideVM: ObservableObject {
    @Published var list: [ShopItemModel] = [ShopItemModel(id: 0,
                                                          categoryName: CategoryCollectionButtonModel(id: 0,
                                                                                                      title: "Все",
                                                                                                      category: .all,
                                                                                                      style: .selected),
                                                          product: []),
                                            ShopItemModel(id: 1,
                                                          categoryName: CategoryCollectionButtonModel(id: 1,
                                                                                                      title: "Очки",
                                                                                                      category: .glass,
                                                                                                      style: .notSelected),
                                                          product: [MainGrideDateModel(id: 0, image: Image(AppImage.Category.Glass.glass6),
                                                                                       title: "Ray-Ban",
                                                                                       categoryId: 1,
                                                                                       categoryValue: .glass,
                                                                                       description: "Designed for men and women, Ray-Ban RX4355V Vagabond Optics eyeglasses offer advanced performance features with classic style. The lightweight frames feature black frames and temples, perfect for both comfort and style.",
                                                                                       shortDescription: "Designed for men and women"),
                                                                    MainGrideDateModel(id: 1, image: Image(AppImage.Category.Glass.glass1),
                                                                                       title: "Ray-Ban Summer",
                                                                                       categoryId: 1,
                                                                                       categoryValue: .glass,
                                                                                       description: "Super slim volumes & brushed finishes profile a protagonist of the specialist design series: light, flexible and resilient, this high performance optical style now features a dedicated selection of stylish clip-on lenses for added attitude. This easy-to-wear, best-seller style provides the perfect support for a new series of 4 clip-on sun lenses. Modern gradient mirror and classic green sun lenses complement the frame to guarantee a truly multi-functional style. Premium quality Ray-Ban lenses offer enhanced vision comfort, as well as 100% protection from harmful UV rays. The clip-on lenses’ fine metal structure adds a super stylish, fine upper bridge to the frame.",
                                                                                       shortDescription: "Super slim volumes & brushed finishes profile a protagonist of the specialist design series"),
                                                                    MainGrideDateModel(id: 2,image: Image(AppImage.Category.Glass.glass2),
                                                                                       title: "Ray-Ban Spring",
                                                                                       categoryId: 1,
                                                                                       categoryValue: .glass,
                                                                                       description: "Designed for men and women, Ray-Ban RX4355V Vagabond Optics eyeglasses offer advanced performance features with classic style. The lightweight frames feature black frames and temples, perfect for both comfort and style.",
                                                                                       shortDescription: "The lightweight frames feature black"),
                                                                    MainGrideDateModel(id: 3,
                                                                                       image: Image(AppImage.Category.Glass.glass3),
                                                                                       title: "Ray-Ban Fun",
                                                                                       categoryId: 1,
                                                                                       categoryValue: .glass,
                                                                                       description: "This easy-to-wear, best-seller style provides the perfect support for a new series of 4 clip-on sun lenses. Modern gradient mirror and classic green sun lenses complement the frame to guarantee a truly multi-functional style",
                                                                                       shortDescription: "For both comfort and style."),
                                                                    MainGrideDateModel(id: 4,
                                                                                       image: Image(AppImage.Category.Glass.glass4),
                                                                                       title: "Ray-Ban My Boy",
                                                                                       categoryId: 1,
                                                                                       categoryValue: .glass,
                                                                                       description: "Designed for men and women, Ray-Ban RX4355V Vagabond Optics eyeglasses offer advanced performance features with classic style. The lightweight frames feature black frames and temples, perfect for both comfort and style.",
                                                                                       shortDescription: "Ray-Ban RX4355V Vagabond Optics eyeglasses"),
                                                                    MainGrideDateModel(id: 5,
                                                                                       image: Image(AppImage.Category.Glass.glass5),
                                                                                       title: "Ray-Ban Girl", categoryId: 1,
                                                                                       categoryValue: .glass,
                                                                                       description: "The lightweight frames feature black frames and temples, perfect for both comfort and style.",
                                                                                       shortDescription: "The lightweight frames feature black frames and temples, perfect for both comfort and style."),
                                                                    MainGrideDateModel(id: 6,
                                                                                       image: Image(AppImage.Category.Glass.glass6),
                                                                                       title: "Ray-Ban Fuck Style", categoryId: 1,
                                                                                       categoryValue: .glass,
                                                                                       description: "Designed for men and women, Ray-Ban RX4355V Vagabond Optics eyeglasses offer advanced performance features with classic style. The lightweight frames feature black frames and temples, perfect for both comfort and style.",
                                                                                       shortDescription: "The lightweight")
                                                          ]),
                                            ShopItemModel(id: 2,
                                                          categoryName: CategoryCollectionButtonModel(id: 2,
                                                                                                      title: "Сумка",
                                                                                                      category: .bag,
                                                                                                      style: .notSelected),
                                                          product: [MainGrideDateModel(id: 7,
                                                                                       image: Image(AppImage.Category.Bag.bag1),
                                                                                       title: "название ффыва ",
                                                                                       categoryId: 2,
                                                                                       categoryValue: .bag,
                                                                                       description: "asdfasdfasdfasdf asd asd "),
                                                                    MainGrideDateModel(id: 8,
                                                                                       image: Image(AppImage.Category.Bag.bag2),
                                                                                       title: "название ффыва ",
                                                                                       categoryId: 2,
                                                                                       categoryValue: .bag,
                                                                                       description: "asdfasdfasdfasdf asd asd "),
                                                                    MainGrideDateModel(id: 9,
                                                                                       image: Image(AppImage.Category.Bag.bag3),
                                                                                       title: "название ффыва ",
                                                                                       categoryId: 2,
                                                                                       categoryValue: .bag,
                                                                                       description: "asdfasdfasdfasdf asd asd "),
                                                                    MainGrideDateModel(id: 10,
                                                                                       image: Image(AppImage.Category.Bag.bag4),
                                                                                       title: "название ффыва ",
                                                                                       categoryId: 2,
                                                                                       categoryValue: .bag,
                                                                                       description: "asdfasdfasdfasdf asd asd "),
                                                                    MainGrideDateModel(id: 11,
                                                                                       image: Image(AppImage.Category.Bag.bag5),
                                                                                       title: "название ффыва ",
                                                                                       categoryId: 2,
                                                                                       categoryValue: .bag,
                                                                                       description: "asdfasdfasdfasdf asd asd "),
                                                                    MainGrideDateModel(id: 12,
                                                                                       image: Image(AppImage.Category.Bag.bag1),
                                                                                       title: "название ффыва ",
                                                                                       categoryId: 2,
                                                                                       categoryValue: .bag,
                                                                                       description: "asdfasdfasdfasdf asd asd ")
                                                          ]),
                                            ShopItemModel(id: 3,
                                                          categoryName: CategoryCollectionButtonModel(id: 3,
                                                                                                      title: "Ручки",
                                                                                                      category: .pen,
                                                                                                      style: .notSelected),
                                                          product: [MainGrideDateModel(id: 13,
                                                                                       image: Image(AppImage.Category.Pen.pen1),
                                                                                       title: "название ффыва ",
                                                                                       categoryId: 3,
                                                                                       categoryValue: .pen,
                                                                                       description: "asdfasdfasdfasdf asd asd "),
                                                                    MainGrideDateModel(id: 14,
                                                                                       image: Image(AppImage.Category.Pen.pen2),
                                                                                       title: "название ффыва ",
                                                                                       categoryId: 3,
                                                                                       categoryValue: .pen,
                                                                                       description: "asdfasdfasdfasdf asd asd "),
                                                                    MainGrideDateModel(id: 15,
                                                                                       image: Image(AppImage.Category.Pen.pen3),
                                                                                       title: "название ффыва ",
                                                                                       categoryId: 3,
                                                                                       categoryValue: .pen,
                                                                                       description: "asdfasdfasdfasdf asd asd "),
                                                                    MainGrideDateModel(id: 16,
                                                                                       image: Image(AppImage.Category.Pen.pen4),
                                                                                       title: "название ффыва ",
                                                                                       categoryId: 3,
                                                                                       categoryValue: .pen,
                                                                                       description: "asdfasdfasdfasdf asd asd "),
                                                                    MainGrideDateModel(id: 17,
                                                                                       image: Image(AppImage.Category.Pen.pen1),
                                                                                       title: "название ффыва ",
                                                                                       categoryId: 3,
                                                                                       categoryValue: .pen,
                                                                                       description: "asdfasdfasdfasdf asd asd "),
                                                                    MainGrideDateModel(id: 18,
                                                                                       image: Image(AppImage.Category.Pen.pen2),
                                                                                       title: "название ффыва ",
                                                                                       categoryId: 3,
                                                                                       categoryValue: .pen,
                                                                                       description: "asdfasdfasdfasdf asd asd ")
                                                          ]),
                                            ShopItemModel(id: 4,
                                                          categoryName: CategoryCollectionButtonModel(id: 4,
                                                                                                      title: "Часы",
                                                                                                      category: .watch,
                                                                                                      style: .notSelected),
                                                          product:  [MainGrideDateModel(id: 19,
                                                                                        image: Image(AppImage.Category.Watch.watch1),
                                                                                        title: "название ффыва ",
                                                                                        categoryId: 4,
                                                                                        categoryValue: .watch,
                                                                                        description: "asdfasdfasdfasdf asd asd "),
                                                                     MainGrideDateModel(id: 20,
                                                                                        image: Image(AppImage.Category.Watch.watch2),
                                                                                        title: "название ффыва ",
                                                                                        categoryId: 4,
                                                                                        categoryValue: .watch,
                                                                                        description: "asdfasdfasdfasdf asd asd "),
                                                                     MainGrideDateModel(id: 21,
                                                                                        image: Image(AppImage.Category.Watch.watch3),
                                                                                        title: "название ффыва ",
                                                                                        categoryId: 4,
                                                                                        categoryValue: .watch,
                                                                                        description: "asdfasdfasdfasdf asd asd "),
                                                                     MainGrideDateModel(id: 22,
                                                                                        image: Image(AppImage.Category.Watch.watch4),
                                                                                        title: "название ффыва ",
                                                                                        categoryId: 4,
                                                                                        categoryValue: .watch,
                                                                                        description: "asdfasdfasdfasdf asd asd "),
                                                                     MainGrideDateModel(id: 23,
                                                                                        image: Image(AppImage.Category.Watch.watch5),
                                                                                        title: "название ффыва ",
                                                                                        categoryId: 4,
                                                                                        categoryValue: .watch,
                                                                                        description: "asdfasdfasdfasdf asd asd "),
                                                                     MainGrideDateModel(id: 24,
                                                                                        image: Image(AppImage.Category.Watch.watch1),
                                                                                        title: "название ффыва ",
                                                                                        categoryId: 4,
                                                                                        categoryValue: .watch,
                                                                                        description: "asdfasdfasdfasdf asd asd ")
                                                          ])]
    
    @Published var selected: Int = 0
    
    func changeStateItem(itemIndex: Int, itemStyle: CategoryCollectionButtonEnum) {
        for index in 0..<self.list.count {
            (index == selected) ? (self.list[index].categoryName.style = .selected) : (self.list[index].categoryName.style = .notSelected)
        }
    }
    
    // TODO: - Переработать
    func setDataForAll() {
        guard list[0].product.isEmpty == true else { return }
        
        for item in list {
            if item.categoryName.category != .all {
                list[0].product.append(contentsOf: item.product)
            }
        }
    }
    
    func changeLike(index: Int, id: Int){
        let categoryId = self.list[selected].product[index].categoryId      //раздел элемента
        self.list[selected].product[index].like.toggle()                    //изменить в текущем разделе
        //изменить в других раздлах
        self.setToggle(categoryId: self.list[selected].categoryName.category == .all ? categoryId! : 0, id: id)
    }
     
    func setToggle(categoryId: Int, id: Int) {
        for i in 0..<self.list[categoryId].product.count {
            if self.list[categoryId].product[i].id == id {
                self.list[categoryId].product[i].like.toggle()
            }
        }
    }
}

struct ShopDataModels: Identifiable {
    var id: Int
    var item: [ShopItemModel]
}

struct ShopItemModel: Identifiable {
    var id: Int
    var categoryName: CategoryCollectionButtonModel
    var product: [MainGrideDateModel]
}

enum CategoryName {
    case all, glass, pen, bag, watch
}
