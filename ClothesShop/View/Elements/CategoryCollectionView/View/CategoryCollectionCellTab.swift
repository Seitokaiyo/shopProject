//
//  CategoryCollectionCellTab.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 07.03.2023.
//

import SwiftUI

struct CategoryCollectionTab: View {
    @EnvironmentObject var products: MainGrideVM
    
    var body: some View {
        VStack(spacing: 0, content: {
            Divider()
            
            TabView(selection: $products.selected) {
                    ForEach(products.list.indices, id: \.self) { index in
                        MainGridView(itemsIndex: index)
                            .environmentObject(products)
                            .tag(index)
                            
                    }
            }
            .onChange(of: products.selected, perform: { selected in
                self.products.changeStateItem(itemIndex: products.list[products.selected].categoryName.id,
                                              itemStyle: products.list[products.selected].categoryName.style)
            })
            .tabViewStyle(.page(indexDisplayMode: .never))
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        }) 
    }
}

struct CategoryCollectionTab_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCollectionTab()
            .environmentObject(MainGrideVM())
    }
}
