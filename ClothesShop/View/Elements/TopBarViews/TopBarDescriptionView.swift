//
//  TopBarDescriptionView.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 09.03.2023.
//

import SwiftUI

struct TopBarDescriptionView: View {
    @State var title: ElemantsTitle
    @Binding var backButton: Bool
    @State var frame: (width: CGFloat, height: CGFloat)
    
    var body: some View {
        ZStack(content: {
            HStack(content: {
                Image(systemName: "arrow.left")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .padding()
                    .foregroundColor(AppColor.black)
                    .onTapGesture {
                        self.backButton.toggle()
                    }
                
                Spacer()
            })
            
            Text(title.rawValue)
                .bold()
                .font(.system(size: 24, design: .serif))
                .foregroundColor(AppColor.black)
        })
        .frame(width: frame.width, height: frame.height)
    }
}

struct TopBarDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarDescriptionView(title: .title,
                              backButton: .constant(false),
        frame: (width: 300, height: 50))
    }
}


