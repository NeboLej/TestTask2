//
//  HomeView.swift
//  TestTask2
//
//  Created by Nebo on 06.04.2022.
//

import UIKit
import SnapKit

class HomeView: UIView {
    
    lazy var tableLandMarks: UITableView = {
        let table = UITableView()
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
        addSubview(tableLandMarks)
    }
    
    private func initConstraints() {
        tableLandMarks.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalToSuperview().inset(50)
        }
    }
   
}
