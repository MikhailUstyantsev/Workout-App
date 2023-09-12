//
//  BaseView.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 07.09.2023.
//

import UIKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        constraintViews()
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

@objc extension BaseView {
    func setupViews() {}
    func constraintViews() {}
    func configureViews() {}
}
