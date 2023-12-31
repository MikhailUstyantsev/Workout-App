//
//  WeekView.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 08.09.2023.
//

import UIKit

final class WeekView: WABaseView {
    
    private var calendar = Calendar.current
    private var stackView = UIStackView()
    
}


extension WeekView {
    
    override func setupViews() {
        super.setupViews()
      addView(stackView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        stackView.spacing = 7
        stackView.distribution = .fillEqually
        
       
        var weekdays = calendar.shortStandaloneWeekdaySymbols
       
        if calendar.firstWeekday == 1 {
           let sunday = weekdays.remove(at: 0)
            weekdays.append(sunday)
        }
        
        weekdays.enumerated().forEach { index, name in
            let view = WeekdayView()
            view.configure(with: index, and: name)
            stackView.addArrangedSubview(view)
        }
    }
    
}
