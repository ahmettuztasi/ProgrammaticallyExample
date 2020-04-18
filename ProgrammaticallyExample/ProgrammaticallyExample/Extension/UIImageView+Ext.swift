//
//  UIImage+Ext.swift
//  ProgrammaticallyExample
//
//  Created by admin on 18.04.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import UIKit

// Using for attach image in url to UIImageView
extension UIImageView {
    func load(url: String) {
        let url = URL(string: url)
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url!) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
