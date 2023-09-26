//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 06.09.2023.
//

import UIKit

class ProgressController: BaseController {
    
    private let dailyPerformanceView = DailyPerfomanceView(with: R.Strings.Progress.dailyPerformance, buttonTitle: R.Strings.Progress.last7Days)
    
    private let monthlyPerformanceView = MonthlyPerformanceView(with: R.Strings.Progress.monthlyPerformance, buttonTitle: R.Strings.Progress.last10Months)
    
}

extension ProgressController {
    
    override func addViews() {
        super.addViews()
        view.addView(dailyPerformanceView)
        view.addView(monthlyPerformanceView)
    }
    
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            dailyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            dailyPerformanceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            dailyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dailyPerformanceView.heightAnchor.constraint(equalTo: dailyPerformanceView.widthAnchor, multiplier: 0.68),
            
            monthlyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            monthlyPerformanceView.topAnchor.constraint(equalTo: dailyPerformanceView.bottomAnchor, constant: 15),
            monthlyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            monthlyPerformanceView.heightAnchor.constraint(equalTo: monthlyPerformanceView.widthAnchor, multiplier: 1.06)
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
        
        monthlyPerformanceView.configure(with: [
            .init(title: "Mar", value: 45),
            .init(title: "Apr", value: 55),
            .init(title: "May", value: 60),
            .init(title: "Jun", value: 65),
            .init(title: "Jul", value: 70),
            .init(title: "Aug", value: 80),
            .init(title: "Sep", value: 65),
            .init(title: "Oct", value: 45),
            .init(title: "Nov", value: 30),
            .init(title: "Dec", value: 15),
        ], topChartOffset: 10)
        
    }
    
    
    
}
