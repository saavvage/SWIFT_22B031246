//
//  RegisterView.swift
//  ecoRecApp
//
//  Created by Artemiy on 12.05.2025.
//

import SwiftUI

struct RegisterView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var errorMessage: String?
    @State private var showLogin = false

    @Binding var isUserLoggedIn: Bool

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Регистрация")
                    .font(.largeTitle)
                    .bold()

                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)

                SecureField("Пароль", text: $password)
                    .textFieldStyle(.roundedBorder)

                if let errorMessage = errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                }

                Button("Зарегистрироваться") {
                    AuthService.shared.signUp(email: email, password: password) { result in
                        switch result {
                        case .success:
                            isUserLoggedIn = true
                        case .failure(let error):
                            errorMessage = error.localizedDescription
                        }
                    }
                }
                .buttonStyle(.borderedProminent)

                Button("Уже есть аккаунт? Войти") {
                    showLogin = true
                }
                .padding(.top)

                NavigationLink("", destination: LoginView(isUserLoggedIn: $isUserLoggedIn), isActive: $showLogin)
                    .hidden()
            }
            .padding()
        }
    }
}
