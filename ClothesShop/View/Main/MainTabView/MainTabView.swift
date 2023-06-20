//
//  MainTabView.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 07.03.2023.
//

import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var products: MainGrideVM
    
    var body: some View {
        VStack(content: {
            //MARK: - Фильтер
            CategoryCollectionView()
                .environmentObject(products)
            
            //MARK: - TabView
            CategoryCollectionTab()
                .environmentObject(products)
        })
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(MainGrideVM())
    }
}
