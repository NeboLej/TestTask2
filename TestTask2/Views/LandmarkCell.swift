//
//  LandmarkCell.swift
//  TestTask2
//
//  Created by Nebo on 07.04.2022.
//

import UIKit

class LandmarkCell: UITableViewCell {
    
    lazy var label: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var avatarView: UIImageView = {
        let iv = UIImageView()
        return iv
    }()
    
    lazy var favoriteImage: UIImageView = {
        let iv = UIImageView()
        iv.image = .init(systemName: "star.fill")
        iv.layer.cornerRadius = 25
        iv.clipsToBounds = true
        return iv
    }()
    
    func initCell(name: String, avatar: UIImage, isFavorite: Bool) {
        addSubviews()
        initConstraints()
        
        label.text = name
        avatarView.image = avatar
        favoriteImage.isHidden = !isFavorite
    }
    
    
    private func addSubviews() {
        addSubview(avatarView)
        addSubview(label)
        addSubview(favoriteImage)
    }
    
    private func initConstraints() {
        
        avatarView.snp.makeConstraints { make in
            make.left.top.equalToSuperview()
            make.width.height.equalTo(50)
        }
        
        label.snp.makeConstraints { make in
            make.left.equalTo(avatarView.snp.right).offset(30)
            make.centerY.equalTo(avatarView)
            make.width.equalTo(100)
        }
        
        favoriteImage.snp.makeConstraints { make in
            make.left.equalTo(label.snp.right)
            make.centerY.equalTo(label)
            make.width.height.equalTo(20)
        }
        
    }
}
