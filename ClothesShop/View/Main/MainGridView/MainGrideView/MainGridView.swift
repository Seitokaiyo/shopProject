//
//  MainGridView.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 02.03.2023.
//

import SwiftUI

struct MainGridView: View {
    @State var itemsIndex: Int
    @EnvironmentObject var products: MainGrideVM
    @State private var shopDescription: Bool = false
    @State var index = 0
    
    private let graidItem = [GridItem(.adaptive(minimum: 150),
                                      spacing: 0),
                             GridItem(.adaptive(minimum: 150),
                                      spacing: 0)]
    
    private var viewSize: (w: CGFloat, h: CGFloat) {
        return (getWidth() - 20, 0)
    }
    
    var body: some View {
        ZStack {
            NavigationLink(isActive: $shopDescription,
                           destination: {
                ShopDescriptionView(dataModel: $products.list[itemsIndex].product[index],
                                    backButton: $shopDescription,
                                    index: index)
                .environmentObject(products)
            }, label: {
                EmptyView()
            })
            
            ScrollView(.vertical, showsIndicators: false, content: {
                LazyVGrid(columns: graidItem,
                          alignment: .center,
                          spacing: 0,
                          content: {
                    ForEach(products.list[itemsIndex].product.indices, id: \.self){ index in
                        MainGridCellView(item: $products.list[itemsIndex].product[index],
                                         frame: (w: (viewSize.w - 20) / 2 ,
                                                 h: viewSize.w / 2 + 90),
                                         topLike: { item in
                            self.products.changeLike(index: index, id: item.id!)
                        }, topDescription: { item in
                            self.index = index
                            self.shopDescription.toggle()
                        })
                    }
                }).padding(.top, 10)
            })
        }
        .frame(width: viewSize.w)
    }
}

struct MainGridView_Previews: PreviewProvider {
    static var previews: some View {
        MainGridView(itemsIndex: 0)
            .environmentObject(MainGrideVM())
    }
}
