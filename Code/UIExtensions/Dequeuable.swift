//
//  Dequeuable.swift
//  Candies
//
//  Created by Matheus Rabelo on 10/10/18.
//  Copyright © 2018 Matheus Rabelo. All rights reserved.
//

import UIKit

public protocol Dequeuable {
    static var nibName: String { get }
}

public extension Dequeuable where Self: UITableViewCell {
    static var nibName: String {
        return String(String(describing: Self.self).split(separator: ".").last!)
    }
    static func register(in tableView: UITableView) {
        tableView.register(UINib(nibName: Self.nibName, bundle: Bundle.main), forCellReuseIdentifier: Self.nibName)
    }
    static func dequeue(for tableView: UITableView, at indexPath: IndexPath) -> Self {
        return tableView.dequeueReusableCell(withIdentifier: Self.nibName, for: indexPath) as! Self
    }
}

public extension Dequeuable where Self: UICollectionViewCell {
    static var nibName: String {
        return String(String(describing: Self.self).split(separator: ".").last!)
    }
    static func register(in collectionView: UICollectionView) {
        collectionView.register(UINib(nibName: Self.nibName, bundle: Bundle.main), forCellWithReuseIdentifier: Self.nibName)
    }
    static func dequeue(for collectionView: UICollectionView, at indexPath: IndexPath) -> Self {
        return collectionView.dequeueReusableCell(withReuseIdentifier: Self.nibName, for: indexPath) as! Self
    }
}
