//
//  HomeView.swift
//  TestTask2
//
//  Created by Nebo on 06.04.2022.
//

import UIKit
import SnapKit

class HomeView: UIView {
    
    lazy var labelName: UILabel = {
        let label = UILabel()
        label.text = "Landmarks"
        label.font = UIFont(name: "AvenirNext-Bold", size: 45)
        return label
    }()
    
    lazy var tableLandMarks: UITableView = {
        let table = UITableView()
        table.register(LandmarkCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    init() {
        super.init(frame: .zero)
        setupView()
        addSubviews()
        initConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .systemYellow
    }
    
    private func addSubviews() {
        addSubview(labelName)
        addSubview(tableLandMarks)
    }
    
    private func initConstraints() {
        labelName.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(safeAreaLayoutGuide.snp.top)
            make.height.equalTo(50)
        }
        
        tableLandMarks.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(labelName.snp.bottom)
        }
    }
   
}
