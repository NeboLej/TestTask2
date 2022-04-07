//
//  HomeVC.swift
//  TestTask2
//
//  Created by Nebo on 07.04.2022.
//

import UIKit

class HomeVC: UIViewController {
    
    
    let homeView = HomeView()
    
    override func loadView() {
        self.view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setuoDelegates()
    }
    
    private func setuoDelegates() {
        homeView.tableLandMarks.delegate = self
        homeView.tableLandMarks.dataSource = self
    }  
}


extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LandmarkCell
        cell.initCell(name: "Oleg", avatar: .checkmark, isFavorite: true)
        return cell
    }
    
    
}
