//
//  AuthView.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 14.03.2023.
//

import SwiftUI

struct AuthView: View {
    @EnvironmentObject private var auth: AuthVM
    @Binding var backButton: Bool
    @State var viewState: AuthState
    
    var body: some View {
        ZStack(content: {
            NavigationLink(isActive: $auth.showNextView,
                           destination: {
                TabViewContent()
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
            
            VStack(spacing: 15, content: {
                Text(viewState == .auth ? "Войти" : "Регистрация")
                    .font(.system(size: 35, design: .serif))
                
                VStack(spacing: 10, content: {
                    // MARK: - Error
                    VStack(content: {
                        Text(auth.error.value)
                            .font(.system(size: 16, design: .serif))
                            .foregroundColor(.white)
                            .padding()
                    })
                    .frame(width: getWidth() - 40, height: self.auth.error.state ? 50 : 0)
                    .background(AppColor.red.opacity(0.6))
                    .cornerRadius(10)
                    .onTapGesture {
                        self.auth.error.state.toggle()
                    }
                    .opacity(auth.error.state == true ? 1 : 0)
                    
                    // MARK: - Поля
                    VStack(spacing: 15, content: {
                        TextField("Логин", text: $auth.email, onEditingChanged: { (isChanged) in
                            guard auth.email != "" else { return self.auth.error.state = false }
                            if !isChanged {
                                if self.auth.isValidEmail(auth.email) {
                                    self.auth.error.state = false
                                    self.auth.error.value = AppErrorService.Empty.empty
                                } else {
                                    self.auth.error.value = AppErrorService.Auth.errorEmail
                                    self.auth.error.state = true
                                }
                            }
                        })
                        
                        SecureField("Пароль", text: $auth.password)
                        
                        if viewState == .reg {
                            SecureField("Пароль", text: $auth.repeatPassword)
                        }
                    })
                    .padding()
                    .frame(width: getWidth() - 40)
                    .background(AppColor.white)
                    .cornerRadius(10)
                })
                
                Button(action: {
                    if viewState == .auth {
                        self.auth.auth()
                    } else {
                        guard auth.checkPassword() == true else { return }
                        self.auth.reg()
                    }
                }, label: {
                    if viewState == .auth {
                        ButtonView(model: .auth,
                                   state: .constant(.activeBlack),
                                   frame: (getWidth() - 40, 50))
                    } else {
                        ButtonView(model: .reg,
                                   state: .constant(.activeBlack),
                                   frame: (getWidth() - 40, 50))
                    }
                })
                
                Button(action: {
                    self.backButton.toggle()
                }, label: {
                        ButtonView(model: .back,
                                   state: .constant(.activeWhite),
                                   frame: (getWidth() - 40, 50))
                    
                })
            })
        })
        .animation(.easeInOut(duration: 1), value: auth.error.state)
        .navigationBarHidden(true)
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView(backButton: .constant(false),
                 viewState: .reg)
            .environmentObject(AuthVM())
    }
}

enum AuthState {
    case auth
    case reg
}
