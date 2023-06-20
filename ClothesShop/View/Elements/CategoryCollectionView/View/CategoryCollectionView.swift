//
//  CategoryCollectionView.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 02.03.2023.
//

import SwiftUI

struct CategoryCollectionView: View {
    @EnvironmentObject var products: MainGrideVM
    
    var body: some View {
        ZStack(content: {
            ScrollViewReader(content: { scroll in
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack(spacing: 0, content: {
                        ForEach(products.list.indices, id: \.self) { index in
                            CategoryCollectionCellView(item: $products.list[index].categoryName){ item in
                                self.products.selected = index
                                self.products.changeStateItem(itemIndex: item.id, itemStyle: item.style)
                            }
                        }
                    })
                }).onChange(of: products.selected, perform: { select in
                    scroll.scrollTo(select)
                    //scroll.scrollTo(select, anchor: .center)
                })
            })
        })
    }
}

struct CategoryCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCollectionView()
            .environmentObject(MainGrideVM())
    }
}



