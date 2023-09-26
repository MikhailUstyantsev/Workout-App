//
//  WALineChartView.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 24.09.2023.
//

import UIKit

extension WALineChartView {
    
    struct Data {
        let title: String
        let value: Int
    }
    
}


final class WALineChartView: WABaseView {
    
    private let yAxisView = WALineChartYAxisView()
    private let xAxisView = WALineChartXAxisView()
    
    private let chartView = WAChartView()
    
    func configure(with data: [WALineChartView.Data], topChartOffset: CGFloat) {
        yAxisView.configure(with: data)
        xAxisView.configure(with: data)
        chartView.configure(with: data, topChartOffset: topChartOffset)
    }
    
}


extension WALineChartView {
    
    override func setupViews() {
        super.setupViews()
        addView(yAxisView)
        addView(xAxisView)
        addView(chartView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
       
        NSLayoutConstraint.activate([
            yAxisView.topAnchor.constraint(equalTo: topAnchor),
            yAxisView.leadingAnchor.constraint(equalTo: leadingAnchor),
            yAxisView.bottomAnchor.constraint(equalTo: xAxisView.topAnchor, constant: -12),
            
            xAxisView.leadingAnchor.constraint(equalTo: yAxisView.trailingAnchor, constant: 8),
            xAxisView.bottomAnchor.constraint(equalTo: bottomAnchor),
            xAxisView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 4),
            
            chartView.leadingAnchor.constraint(equalTo: yAxisView.trailingAnchor, constant: 16),
            chartView.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            chartView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -4),
            chartView.bottomAnchor.constraint(equalTo: xAxisView.topAnchor, constant:  -16),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .clear
        
    }
    
    
}
