//
//  AuthService.swift
//  ecoRecApp
//
//  Created by Artemiy on 12.05.2025.
//

import Foundation
import FirebaseAuth

class AuthService {
    static let shared = AuthService()

    private init() {}

    func signIn(email: String, password: String, completion: @escaping (Result<Void, Error>) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { _, error in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(()))
            }
        }
    }

    func signUp(email: String, password: String, completion: @escaping (Result<Void, Error>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { _, error in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(()))
            }
        }
    }

    func signOut() {
        try? Auth.auth().signOut()
    }
}
