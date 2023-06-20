//
//  LoadPreview.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 23.02.2023.
//

import SwiftUI

struct LoadPreview: View {
    @StateObject private var auth = AuthVM()
    @State private var viewState: AuthState = .reg
    
    @State private var logoRound: Double = 0
    private let timer = Timer.publish(every: 1,
                                      on: .main,
                                      in: .common).autoconnect()
    
    var body: some View {
        NavigationView(content: {
            ZStack {
                NavigationLink(isActive: $auth.nextTab,
                               destination: {
                    TabViewContent()
                },label: {
                    EmptyView()
                })
                
                NavigationLink(isActive: $auth.nextAuth,
                               destination: {
                    AuthView(backButton: $auth.nextAuth,
                             viewState: viewState)
                        .environmentObject(auth)
                },label: {
                    EmptyView()
                })
                
                Image(AppImage.Wallpaper.wallpaper2)
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .overlay(
                        ZStack{ Rectangle().foregroundColor(AppColor.white.opacity(0.1)).edgesIgnoringSafeArea(.all) }
                            .background(.ultraThinMaterial)
                    )
                    //.blur(radius: 35)
                
                VStack(spacing: 0, content: {
                    Image(AppImage.CompanyLogo.logo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .background(AppColor.black)
                        .cornerRadius(100)
                        .rotationEffect(Angle(degrees: logoRound))
                        .onReceive(timer, perform: { _ in
                            self.logoRound += 30
                        })
                        .animation(.easeInOut(duration: 3).delay(1), value: logoRound)
                    
                    Text("Montblanc")
                        .font(.custom(AppFont.babylonica, size: 54))
                    Text("Old money style")
                        .font(.system(size: 24, design: .serif))
                })
                
                VStack(spacing: 15, content: {
                    Spacer()
                    
                    Button(action: {
                        self.viewState = .auth
                        self.auth.nextAuth.toggle()
                    }, label: {
                        ButtonView(model: .auth,
                                   state: .constant(.activeBlack),
                                   frame: (getWidth() - 40, 50))
                    })
                    
                    Button(action: {
                        self.viewState = .reg
                        self.auth.nextAuth.toggle()
                    }, label: {
                        ButtonView(model: .reg,
                                   state: .constant(.activeWhite),
                                   frame: (getWidth() - 40, 50))
                    })
                })
            }
        })
        .onAppear(perform: {
            self.auth.checkHaveUser()
        })
    }
}

struct LoadPreview_Previews: PreviewProvider {
    static var previews: some View {
        LoadPreview()
    }
}
