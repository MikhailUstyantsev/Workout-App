//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 06.09.2023.
//

import UIKit

class SessionController: BaseController {
    
    private let timerView: TimerView = {
        let view = TimerView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "High intensity cardio"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        
        addNavBarButton(at: .left, with: Resources.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Session.navBarRight)
    }
    
    
}

extension SessionController {
    
    override func addViews() {
        super.addViews()
        view.addView(timerView)
    }
    
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    
    override func configureViews() {
        super.configureViews()
    }
    
    
}
