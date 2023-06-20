//
//  ButtonView.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 23.02.2023.
//

import SwiftUI

struct ButtonView: View {
    @State var model: ButtonModel
    @Binding var state: ButtonState
    @State var frame: (width: CGFloat, height: CGFloat)
    @State var imageLeft: String?
    @State var imageRight: String?
     
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                if let left = imageLeft {
                    Image(left)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(state.style.foregroundColor)
                        .background(state.style.background)
                }
                
                Text(model.title)
                    .bold()
                    .font(.system(size: 18))
                    .foregroundColor(state.style.foregroundColor)
                
                if let right = imageRight {
                    Image(right)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(state.style.foregroundColor)
                        .background(state.style.background)
                }
                
                Spacer()
            }
            .frame(width: frame.width, height: frame.height)
            .background(state.style.background)
            .cornerRadius(10)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(model: .ok,
                   state: .constant(.activeBlack),
                   frame: (340, 50),
                   imageLeft: AppImage.AppIcon.nextIcon,
                   imageRight: AppImage.AppIcon.nextIcon)
    }
}

