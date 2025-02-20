//
//  StoreViewController.swift
//  lab2
//
//  Created by Artemiy on 20.02.2025.
//


import UIKit

class StoreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let tableView = UITableView()
    let productManager = ProductManager()
    var products: [Product] = []
    let imageLoader = ImageLoader()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "E-Store"
        
        print("StoreViewController loaded")
        products = productManager.getProducts()
        setupTableView()
    }
    
    func setupTableView() {
        tableView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
        print("TableView setup")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let product = products[indexPath.row]
        cell.textLabel?.text = "\(product.name) - $\(product.price)"
        
        imageLoader.loadImage(from: product.imageUrl) { image in
            cell.imageView?.image = image
            cell.setNeedsLayout()
        }
        
        return cell
    }
}
