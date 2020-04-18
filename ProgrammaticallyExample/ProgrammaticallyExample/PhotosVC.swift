//
//  ViewController.swift
//  ProgrammaticallyExample
//
//  Created by admin on 17.04.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import UIKit

class PhotosVC: UITableViewController {
    var photos: PhotosModel? {
        didSet {
            hideActivityIndicator()
            self.tableView.reloadData()
        }
    }
    let photoCellId = "photoCellId"
    var activityView: UIActivityIndicatorView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getPhotos()
        setupTableView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        showActivityIndicator()
    }
}

// TableView setup extension
extension PhotosVC {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos?.result?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: photoCellId, for: indexPath) as! PhotoCell
        cell.titleLabel.text = photos?.result?[indexPath.item].title
        cell.pictureImage.load(url: (photos?.result?[indexPath.item].thumbnail)!)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PhotoCell.self, forCellReuseIdentifier: photoCellId)
        
        tableView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
    }
}

// Api connection extension
extension PhotosVC {
    func getPhotos() {
        ConnectionManager().setBaseUrl(url: HttpLink.photos.UrlValue)
            .setMethod(method: .get)
            .setBodyParameter(parameter: ServiceHelper().getParameters())
            .sendRequest { (response) in
                
                switch response {
                case .success(let data):
                    do {
                        self.photos = try JSONDecoder().decode(PhotosModel.self, from: data)
                        
                    } catch { print(error) }
                    
                case .failure(let error):
                    print(error)
                }
        }
    }
}

// Activity Indicator extension
extension PhotosVC {
    public func showActivityIndicator() {
        activityView = UIActivityIndicatorView(style: .gray)
        activityView?.center = self.view.center
        self.view.addSubview(activityView!)
        activityView?.startAnimating()
    }
    
    public func hideActivityIndicator(){
        if (activityView != nil){
            activityView?.stopAnimating()
        }
    }
}
