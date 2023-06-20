//
//  MainView.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 18.02.2023.
//

import SwiftUI

struct MainView: View {
    @StateObject private var products = MainGrideVM()
    @State private var notificationCount: Int = 7
    @State private var showProfile = false
    @State private var showNotification = false
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView(content: {
            ZStack(content: {
                NavigationLink(isActive: $showNotification, destination: {
                    NotificationView(backButton: $showNotification)
                }, label: { EmptyView() })
                
                ZStack(content: {
                    VStack(spacing: 0, content: {
                            VStack(spacing: 15, content: {
                                //MARK: - Шапка главного окна
                                MainTopBar(notificationCount: $notificationCount){
                                    self.showNotification.toggle()
                                }
                                
                                //MARK: - Поиск
                                //SearchTextFiled(frame: (getWidth() - 40, 50), placholder: "Поиск", text: $searchText)
                                
                                //MARK: - Список товаров
                                MainTabView()
                                    .environmentObject(products)
                            })
                            .frame(width: getWidth())
                    })
                })
            }) 
        })
        .onAppear(perform: {
            self.products.setDataForAll()
        })
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
