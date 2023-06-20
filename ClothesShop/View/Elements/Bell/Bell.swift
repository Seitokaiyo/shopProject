//
//  Bell.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 23.02.2023.
//

import SwiftUI

struct BellView: View {
    @Binding var notificationCount: Int
    
    var body: some View {
        ZStack {
            Image(systemName: "bell")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
            
            if notificationCount > 0 {
                VStack{
                    HStack {
                        Spacer()
                        Text(notificationCount > 99 ? "99+" : "\(notificationCount)")
                            .bold()
                            .font(.system(size: 8))
                            .foregroundColor(AppColor.white)
                            .frame(width: 20, height: 20)
                            .background(.red)
                            .cornerRadius(10)
                            .offset(x: 3, y: -8)
                    }
                    Spacer()
                }.frame(width: 30, height: 30)
            }
        }.frame(width: 30, height: 30)
    }
}

struct BellBellView_Previews: PreviewProvider {
    static var previews: some View {
        BellView(notificationCount: .constant(1))
    }
}
