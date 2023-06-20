//
//  NotificationView.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 16.03.2023.
//

import SwiftUI

struct NotificationView: View {
    @State private var list = [ListDataModel]()
    @Binding var backButton: Bool
    
    var body: some View {
        ZStack(content: {
            VStack(spacing: 0, content: {
                TopBarDescriptionView(title: .notifi,
                                      backButton: $backButton,
                                      frame: (width: getWidth() - 20, height: 50))
                if !list.isEmpty {
                    List {
                        ForEach(list.indices, id: \.self){ index in
                            HStack(content: {
                                Text(list[index].title!)
                            })
                           
                        }
                    }
                } else  {
                    VStack(content: {
                        Spacer()
                        ProgressView()
                        Spacer()
                    })
                }
            })
        })
        .navigationBarHidden(true)
        .onAppear(perform: {
            DataBaseService.getDataModel(){ array in
                self.list = array
            }
        })
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(backButton: .constant(false))
    }
}
