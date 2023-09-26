//
//  OverviewController.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 06.09.2023.
//

import UIKit

class OverviewController: BaseController {
   
    private let navBar = OverviewNavBar()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension OverviewController {
    
    override func addViews() {
        super.addViews()
        view.addSubview(navBar)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
           
        ])
        
    }
    
    override func configureViews() {
        super.configureViews()
        navigationController?.navigationBar.isHidden = true
        
        [navBar].forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMMM dd"
        
    }
    
}

