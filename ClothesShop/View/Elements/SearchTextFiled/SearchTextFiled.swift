//
//  SearchTextFiled.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 23.02.2023.
//

import SwiftUI

struct SearchTextFiled: View {
    @State var frame: (width: CGFloat, height: CGFloat)
    @State var placholder: String
    @Binding var text: String
    
    var body: some View {
        ZStack(content: {
            HStack(content: {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(AppColor.black)
                TextField(placholder, text: $text)
            })
            .padding()
            .frame(width: frame.width, height: frame.height)
            .background(AppColor.sliver)
            .cornerRadius(10)
        })
    }
}

struct SearchTextFiled_Previews: PreviewProvider {
    static var previews: some View {
        SearchTextFiled(frame: (340, 50),
                        placholder: "Поиск",
                        text: .constant(""))
    }
}
