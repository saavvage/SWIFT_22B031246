//
//  ImagesViewModel.swift
//  fivePic
//
//  Created by Artemiy on 03.04.2025.
//

import Foundation
import SwiftUI

final class ImagesViewModel: ObservableObject {
    @Published var images: [ImageModel] = []
    
    func loadMoreImages() {
        var tempImages: [ImageModel] = []
        let group = DispatchGroup()
        
        let urlStrings: [String] = (0...4).map { _ in
            "https://picsum.photos/id/\(Int.random(in: 0...1000))/500"
        }
        
        for url in urlStrings {
            group.enter()
            downloadImage(urlString: url) { model in
                if let model = model {
                    tempImages.append(model)
                }
                group.leave()
            }
        }
        
        group.notify(queue: .main) {
            self.images.append(contentsOf: tempImages)
        }
    }
    
    func refreshImages() {
        images.removeAll()
        loadMoreImages()
    }
    
    private func downloadImage(urlString: String, completion: @escaping (ImageModel?) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        DispatchQueue.global(qos: .background).async {
            if let data = try? Data(contentsOf: url),
               let uiImage = UIImage(data: data) {
                let imageModel = ImageModel(image: Image(uiImage: uiImage))
                DispatchQueue.main.async {
                    completion(imageModel)
                }
            } else {
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
        }
    }
}

struct ImageModel: Identifiable {
    let id = UUID()
    let image: Image
}
