//
//  WALineChartYAxisView.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 24.09.2023.
//

import UIKit


final class WALineChartYAxisView: WABaseView {
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    func configure(with data: [WALineChartView.Data]) {
        stackView.arrangedSubviews.forEach {
            $0.removeFromSuperview()
        }
        
        (0...9).reversed().forEach {
            let label = UILabel()
            label.font = R.Fonts.helveticaRegular(with: 9)
            label.textColor = R.Colors.inactive
            label.textAlignment = .right
            label.text = "\($0 * 10)" // TODO: - Remake calculating intervals
            
            stackView.addArrangedSubview(label)
        }
        
    }
    
}


extension WALineChartYAxisView {
    
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
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .clear
    }
    
    
}
