//
//  MainView.swift
//  DoNo
//
//  Created by Dagmawi Nadew-Assefa on 3/19/18.
//  Copyright © 2018 Sason. All rights reserved.
//

import UIKit

class MainView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let addPhotoButton: UIButton = {
        
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "addButton"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    
    let addTextButton: UIButton = {
       
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(#imageLiteral(resourceName: "textButton"), for: .normal)
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    let downloadButton: UIButton = {
       
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "downloadIcon"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    let imagePreview: UIImageView = {
       
        let preview = UIImageView()
        preview.translatesAutoresizingMaskIntoConstraints = false
        preview.contentMode = .scaleAspectFit
        
        return preview
    }()
    
    let addImageIcon: UIImageView = {
       
        let promptImage = UIImageView()
        promptImage.image = #imageLiteral(resourceName: "AddPictureIcon")
        promptImage.contentMode = .scaleAspectFit
        promptImage.translatesAutoresizingMaskIntoConstraints = false
        
        return promptImage
    }()

    
    func setupView() {
        backgroundColor = .white
        
        addSubview(imagePreview)
        addSubview(addImageIcon)
        addSubview(addPhotoButton)
        addSubview(addTextButton)
        addSubview(downloadButton)
        
        //X, Y, width, height
        addImageIcon.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        addImageIcon.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        
        //X, Y, width, height
        imagePreview.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        imagePreview.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        imagePreview.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        
        //X, Y, width, height
        addPhotoButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -18).isActive = true
        addPhotoButton.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 18).isActive = true
        addPhotoButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addPhotoButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        //X, Y, width, height
        addTextButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -18).isActive = true
        addTextButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        addTextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addTextButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        //X, Y, width, height
        downloadButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -18).isActive = true
        downloadButton.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -18).isActive = true
        downloadButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        downloadButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }

}




























