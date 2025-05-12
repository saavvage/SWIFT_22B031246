//
//  FirestoreService.swift
//  ecoRecApp
//
//  Created by Artemiy on 12.05.2025.
//

import Foundation
import FirebaseFirestore


class FirestoreService {
    private let db = Firestore.firestore()

    func fetchCollectionPoints(completion: @escaping ([CollectionPoint]) -> Void) {
        db.collection("collectionPoints").getDocuments { snapshot, error in
            guard let documents = snapshot?.documents else {
                print("No documents")
                completion([])
                return
            }

            let points = documents.compactMap { doc in
                try? doc.data(as: CollectionPoint.self)
            }

            completion(points)
        }
    }
}
