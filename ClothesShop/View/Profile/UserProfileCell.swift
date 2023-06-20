//
//  UserProfileCell.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 21.02.2023.
//

import SwiftUI

struct UserProfileCell: View {
    @EnvironmentObject var mainVM: MainViewModel
    
    var body: some View {
        ZStack {
            VStack(content: {
                HStack(content: {
                    if let _ = mainVM.juliet.image {
                        Image(base64String: mainVM.juliet.image!)!
                        //Image(AppImage.AppIcon.userImage)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .cornerRadius(50)
                    }
                    
                    VStack(content: {
                        HStack(content: {
                            Text(self.mainVM.juliet.name)
                                .bold()
                                .font(.system(size: 24))
                                .foregroundColor(AppColor.black)
                            Spacer()
                        })
                        
                        HStack(content: {
                            Text("\(self.mainVM.juliet.age)")
                                .foregroundColor(AppColor.gray)
                                .font(.system(size: 12))
                            Spacer()
                        })
                    })
                })
            })
        }
    }
}

struct UserProfileCell_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileCell().environmentObject(MainViewModel())
    }
}
