//
//  ImageLoader.swift
//  lab2
//
//  Created by Artemiy on 20.02.2025.
//


import UIKit

protocol ImageLoaderDelegate: AnyObject {
    func imageLoader(_loader: ImageLoader, didLoad image: UIImage)
    func imageLoader(_loader: ImageLoader, didFailWith error: Error)
}

class ImageLoader {
    weak var delegate: ImageLoaderDelegate?
    
    func loadImage(from url: String, completion: @escaping (UIImage?) -> Void) {
        DispatchQueue.global().async {
            let image = UIImage(named: url)
            DispatchQueue.main.async {
                completion(image)
            }
        }
    }
}
