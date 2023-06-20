//
//  ProfilView.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 21.02.2023.
//

import SwiftUI

//View
struct ProfileView: View {
    @StateObject private var mainVM = MainViewModel()
    
    @State private var text: String = "Текст"
    @State private var date = Date()
    @State private var switchToggle: Bool = false
    @State private var showProfile: Bool = false
    @State private var offset: CGFloat = 60
    
    var body: some View {
        ZStack {
            VStack(content: {
                List {
                   
                    Section("Профиль", content: {
                        UserProfileCell()
                            .environmentObject(mainVM)
                    })
                    
                    Section("Изменить имя", content: {
                        TextField("Имя", text: $mainVM.juliet.name)
                    })
                }
            })
        }
        .onAppear(perform: {
            DataBaseService.getProfilDataModel(){ prof in
                mainVM.juliet.name = "\(prof.secondname!) \(prof.name!)"
                mainVM.juliet.image = prof.image
                print(prof)
            }
        })
        .animation(.easeOut, value: switchToggle)
        .animation(.easeOut, value: offset)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

