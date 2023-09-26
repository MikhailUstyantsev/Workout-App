//
//  DailyPerfomanceView.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 24.09.2023.
//

import UIKit


final class DailyPerfomanceView: WABaseInfoView {
    
    private let barsView = WABarsView()
    
    func configure(with items: [WABarView.Data]) {
        barsView.configure(with: items)
    }
    
}

extension DailyPerfomanceView {
    
    override func setupViews() {
        super.setupViews()
        addView(barsView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            barsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            barsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            barsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            barsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
            
        ])
    }
    
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
    
}
