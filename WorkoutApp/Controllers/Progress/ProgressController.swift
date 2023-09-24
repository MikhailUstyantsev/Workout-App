//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 06.09.2023.
//

import UIKit

class ProgressController: BaseController {
    
    private let dailyPerformanceView = DailyPerfomanceView(with: R.Strings.Progress.dailyPerformance, buttonTitle: R.Strings.Progress.last7Days)
    
}

extension ProgressController {
    
    override func addViews() {
        super.addViews()
        view.addView(dailyPerformanceView)
    }
    
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            dailyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            dailyPerformanceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            dailyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dailyPerformanceView.heightAnchor.constraint(equalTo: dailyPerformanceView.widthAnchor, multiplier: 0.68)
            ])
    }
    
    
    override func configureViews() {
        super.configureViews()
        
        title = "Workout progress"
        navigationController?.tabBarItem.title = R.Strings.TabBar.progress
        
        addNavBarButton(at: .left, with: R.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: R.Strings.Progress.navBarRight)
        
        
        dailyPerformanceView.configure(with: [
            .init(value: "1", heightMultiplier: 0.2, title: "Mon"),
            .init(value: "2", heightMultiplier: 0.4, title: "Tue"),
            .init(value: "3", heightMultiplier: 0.6, title: "Wed"),
            .init(value: "4", heightMultiplier: 0.8, title: "Thu"),
            .init(value: "5", heightMultiplier: 1, title: "Fri"),
            .init(value: "3", heightMultiplier: 0.6, title: "Sat"),
            .init(value: "2", heightMultiplier: 0.4, title: "Sun"),
        ])
        
    }
    
    
    
}
