//
//  MainGridCellView.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 02.03.2023.
//

import SwiftUI

struct MainGridCellView: View {
    @Binding var item: MainGrideDateModel
    @State var frame: (w: CGFloat, h: CGFloat)
    
    let topLike: (_ item: MainGrideDateModel) -> ()
    let topDescription: (_ item: MainGrideDateModel) -> ()
    
    private var likeIconSize: (w: CGFloat, h: CGFloat) {
        return (((frame.w) - 35), (-(frame.w) + 35))
    }
    
    var body: some View {
        ZStack {
            VStack(content: {
                item.image
                    .resizable()
                    .scaledToFill()
                    .frame(width: (frame.w),
                           height: (frame.w))
                    .background(AppColor.gray.opacity(0.2))
                    .cornerRadius(15)
                    .overlay(content: {
                        VStack{
                            Image(systemName: "heart.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(item.like ? AppColor.red : AppColor.gray)
                                .frame(width: 20, height: 20)
                            
                        }
                        .frame(width: 50, height: 50)
                        .background(AppColor.white)
                        .cornerRadius(15)
                        .padding()
                        .offset(x: ((frame.w / 2) - 35), y: (-(frame.w / 2) + 35))
                        .shadow(color: AppColor.gray.opacity(0.3),
                                radius: 10)
                        .onTapGesture {
                            self.topLike(item)
                        }
                    })
                
                HStack {
                    if let title = item.title {
                        Text(title)
                            .bold()
                            .lineLimit(2)
                            .font(.system(size: 18, design: .serif))
                    }
                    
                    
                    Spacer()
                }
                
                HStack {
                    if let shortDescription = item.shortDescription  {
                        Text(shortDescription)
                            .lineLimit(2)
                            .foregroundColor(AppColor.gray)
                            .font(.system(size: 16, design: .serif))
                    }
                    
                    Spacer()
                }
                
                Spacer()
            })
            .frame(width: frame.w,
                   height: (frame.h),
                   alignment: .leading)
        }
        .onTapGesture {
            self.topDescription(item)
        }
    }
}

struct MainGridCellView_Previews: PreviewProvider {
    static var previews: some View {
        MainGridCellView(item: .constant(MainGrideDateModel(id: 0,
                                                            title: "asdfsdf as dfas dfasd f",
                                                            categoryId: 0,
                                                            categoryValue: .all,
                                                            description: "as asdf asd fasdf asd fdfsdf")),
                         frame: ((UIScreen.main.bounds.width - 20) / 2,
                                 UIScreen.main.bounds.width / 2 + 90),
                         topLike: { _ in },
                         topDescription: { _ in})
    }
}
