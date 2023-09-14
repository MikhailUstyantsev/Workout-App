//
//  PercentView.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 14.09.2023.
//

import UIKit


extension TimerView {
    
    final class PercentView: WABaseView {
        
        private let stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .vertical
            stackView.spacing = 5
            stackView.distribution = .fillProportionally
            return stackView
        }()
        
        private let percentLabel: UILabel = {
            let label = UILabel()
            label.font = Resources.Fonts.helveticaRegular(with: 23)
            label.textColor = Resources.Colors.titleGrey
            label.textAlignment = .center
            return label
        }()
        
        private let subtitleLabel: UILabel = {
            let label = UILabel()
            label.font = Resources.Fonts.helveticaRegular(with: 10)
            label.textColor = Resources.Colors.inactive
            label.textAlignment = .center
            return label
        }()
        
        
    }
    
    
}


extension TimerView.PercentView {
    
    override func setupViews() {
        super.setupViews()
        addView(stackView)
        stackView.addArrangedSubview(percentLabel)
        stackView.addArrangedSubview(subtitleLabel)
    }
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    override func configureViews() {
      super.configureViews()
        
    }
    
    func configure(with title: String, and value: Int) {
        subtitleLabel.text = title
        percentLabel.text = "\(value)%"
    }
    
}
