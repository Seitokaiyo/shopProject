//
//  MainTopBar.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 23.02.2023.
//

import SwiftUI

struct MainTopBar: View {
    @Binding var notificationCount: Int
    let clickBell: () -> ()
    
    var body: some View {
        ZStack{
            HStack{
                Text("Montblanc")
                    .bold()
                    .font(.system(size: 34, design: .serif))
                
                Spacer()
                
                BellView(notificationCount: $notificationCount)
                    .onTapGesture {
                        clickBell()
                    }
            }
            .frame(width: getWidth() - 40, height: 50)
        }
    }
}

struct MainTopBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTopBar(notificationCount: .constant(0)){  }
    }
}
