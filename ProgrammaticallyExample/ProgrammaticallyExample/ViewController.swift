//
//  ViewController.swift
//  ProgrammaticallyExample
//
//  Created by admin on 17.04.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ConnectionManager().setBaseUrl(url: HttpLink.photos.UrlValue)
            .setMethod(method: .get)
            .setBodyParameter(parameter: ServiceHelper().getParameters())
            .sendRequest { (response) in
                
                switch response {
                case .success(let data):
                    do {
                        let responseModel = try JSONDecoder().decode(PhotosModel.self, from: data)
                        print(responseModel)
                    } catch { print(error) }
                    
                case .failure(let error): print(error)
                }
        }
    }
}

