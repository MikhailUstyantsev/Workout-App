//
//  WABarsView.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 16.09.2023.
//

import UIKit

final class WABarsView: WABaseView {
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    func configure(with data: [WABarView.Data]) {
        data.forEach {
            let barView = WABarView(data: $0)
            
            stackView.addArrangedSubview(barView)
        }
    }
    
}


extension WABarsView {
    
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
    
    }
    
    
}
