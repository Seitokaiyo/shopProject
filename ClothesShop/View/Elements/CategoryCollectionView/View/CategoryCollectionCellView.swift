//
//  CategoryCollectionCellView.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 02.03.2023.
//

import SwiftUI

struct CategoryCollectionCellView: View {
    @Binding var item: CategoryCollectionButtonModel
    
    let callBack: (_ item: CategoryCollectionButtonModel) -> ()
    
    var body: some View {
        ZStack {
            Button(action: {
                self.callBack(item)
            }, label: {
                Text(item.title)
                    .padding()
                    .frame(height: 40)
                    .foregroundColor(item.style.state.foregrounColor)
                    .background(item.style.state.backgroundColor)
                    .cornerRadius(10)
                    .padding(.leading, 20)
            })
        }
    }
    
    private func myText() -> some View {
        let text = Text(item.title)
            .padding()
            .foregroundColor(item.style.state.foregrounColor)
            .background(item.style.state.backgroundColor)
            .cornerRadius(10)
            .padding(.leading, 20)
        return text
    }
}

struct CategoryCollectionCellView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCollectionCellView(item: .constant(CategoryCollectionButtonModel(id: 0,
                                                                                 title: "dasdfasdf",
                                                                                 category: .all))){ _ in }
    }
}
