//
//  ContentView.swift
//  VK_Application_SwiftUI
//
//  Created by Сергей Чумовских  on 08.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var login = ""
    @State private var password = ""
    
    let colors = [
        Color(red: 0.612, green: 0.925, blue: 0.984, opacity: 0.7),
        Color(red: 0.396, green: 0.780, blue: 0.780, opacity: 1),
        Color(red: 0.000, green: 0.322, blue: 0.831, opacity: 0.6)
    ]
    
    var body: some View {
        ZStack {
            LinearGradient(colors: colors, startPoint: .topTrailing, endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 32)
            VStack {
                Spacer()
                Text("Авторизация")
                    .font(.system(size: 45))
                    .fontWeight(.medium)
                    .opacity(0.75)
                Spacer()
                HStack {
                    Text("Никнейм")
                        .frame(width: 80)
                        .font(.headline)
                        .padding(.horizontal)
                        .opacity(0.75)
                    TextField("Login", text: $login)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                        .opacity(0.6)
                }
                .padding()
                HStack {
                    Text("Пароль")
                        .frame(width: 80)
                        .font(.headline)
                        .padding(.horizontal)
                        .opacity(0.75)
                    SecureField("Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                        .opacity(0.6)
                }
                .padding()
                Spacer()
                Button(action: {
                    logining()
                }) {
                    Text("Войти")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .opacity(0.75)
                }
                .disabled(login.isEmpty || password.isEmpty ? true : false)
                Spacer()
            }
        }
    }
    
    private func logining() {
        print("logining")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
