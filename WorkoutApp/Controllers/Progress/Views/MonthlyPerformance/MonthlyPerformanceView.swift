//
//  MonthlyPerformanceView.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 24.09.2023.
//

import UIKit


final class MonthlyPerformanceView: WABaseInfoView {
    
    private let lineChartView = WALineChartView()
    
    func configure(with items: [WALineChartView.Data], topChartOffset: CGFloat) {
        lineChartView.configure(with: items, topChartOffset: topChartOffset)
    }
    
}

extension MonthlyPerformanceView {
    
    override func setupViews() {
        super.setupViews()
        addView(lineChartView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            lineChartView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            lineChartView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            lineChartView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            lineChartView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
            
        ])
    }
    
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
    
}
