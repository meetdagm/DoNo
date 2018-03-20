//
//  ViewController.swift
//  DoNo
//
//  Created by Dagmawi Nadew-Assefa on 3/19/18.
//  Copyright © 2018 Sason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTarget()
    }
    
    override func loadView() {
        self.view = mainView
    }
    
    func setupTarget() {
        
        mainView.addPhotoButton.addTarget(self, action: #selector(showPhotoLibrary), for: .touchUpInside)
        mainView.addTextButton.addTarget(self, action: #selector(addTextPhoto), for: .touchUpInside)
        mainView.downloadButton.addTarget(self, action: #selector(download), for: .touchUpInside)
    }
    
    @objc func showPhotoLibrary() {
        
        print("Showing Menu")
        
    }
    
    @objc func addTextPhoto() {
        
        doesImageExist { (exist) in
            if exist{
                print("Adding Text")
            }else{
                print("Please add a Picture")
            }
        }
    }
    
    @objc func download() {
        
        doesImageExist { (exist) in
            if exist{
                print("Saving Image...")
            }else{
                print("Please add a Picture")
            }
        }
        
    }
    
    func doesImageExist(completionHandler: (Bool) -> ()){
        
        if mainView.imagePreview.image == nil {
            completionHandler(false)
        }else {
            completionHandler(true)
        }
        
    }

}

