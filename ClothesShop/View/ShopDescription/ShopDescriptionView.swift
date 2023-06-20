//
//  ShopDescriptionView.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 09.03.2023.
//

import SwiftUI

struct ShopDescriptionView: View {
    @EnvironmentObject var products: MainGrideVM
    @Binding var dataModel: MainGrideDateModel
    @Binding var backButton: Bool
    @State var index: Int
    
    var body: some View {
        ZStack(content: {
            VStack(content: {
                TopBarDescriptionView(title: .title,
                                      backButton: $backButton,
                                      frame: (width: getWidth() - 20, height: 50))
                
                List {
                    VStack(spacing: 20, content: {
                        MainGridCellView(item: $dataModel,
                                         frame: (w: getWidth() - 40, h: getWidth()),
                                         topLike: { item in
                            self.products.changeLike(index: index,
                                                     id: dataModel.id!)
                        }, topDescription: { _ in })
                        
                        if let description = dataModel.description {
                                Text(description)
                                    .frame(width: getWidth() - 40,
                                           alignment: .leading)
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(AppColor.gray)
                        }
                        
                        Text("Chose size")
                            .bold()
                            .foregroundColor(AppColor.black)
                            .font(.system(size: 18, design: .serif))
                            .frame(width: getWidth() - 40,
                                   alignment: .leading)
                        
                        SizeCollection()
                        
                        Divider()
                        
                        HStack(content: {
                            VStack(content: {
                                Text("Цена")
                                    .bold()
                                    .foregroundColor(AppColor.black.opacity(0.7))
                                    .font(.system(size: 24, design: .serif))
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getWidth() / 3, alignment: .leading)
                                Text(dataModel.price)
                                    .bold()
                                    .foregroundColor(AppColor.black)
                                    .font(.system(size: 28, design: .serif))
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getWidth() / 3, alignment: .leading)
                            })
                            
                            Spacer()
                            
                            ButtonView(model: .magazin,
                                       state: .constant(.activeBlack),
                                       frame: (width: getWidth() / 2, height: 50),
                                       imageLeft: AppImage.AppIcon.magazinIcon)
                        }).frame(width: getWidth() - 40,
                                 alignment: .leading)
                       
                        
                    })
                    .listRowSeparator(.hidden)
                }
                .refreshable {
                    print("refresh")
                }
                .listStyle(.plain)
            })
        }).navigationBarHidden(true)
    }
}

struct ShopDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ShopDescriptionView(dataModel: .constant(MainGrideDateModel(id: 3,
                                                                    image: Image(AppImage.Category.Glass.glass3),
                                                                    title: "название ффыва ",
                                                                    categoryId: 1,
                                                                    categoryValue: .glass,
                                                                    description: "asdfasdfasdfa asd fhaskdj fhasjk hfaksdjh akjsdh klasjh dkjlash dljkash dkljasdhkjasdlkasldkhaskdj hkjs sdf asd asd ", shortDescription: "Описание товара бомба братишка )) ")), backButton: .constant(false), index: 0)
        .environmentObject(MainGrideVM())
    }
}
