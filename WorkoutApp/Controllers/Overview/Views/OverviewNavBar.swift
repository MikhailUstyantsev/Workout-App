//
//  OverviewNavBar.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 07.09.2023.
//

import UIKit

final class OverviewNavBar: WABaseView {
    
    private let titleLabel = UILabel()
    private let allWorkoutsButton = WAButton(with: .secondary)
    private let addButton = UIButton()
    
    private let weekView = WeekView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addBottomBorder(with: R.Colors.separator, height: 1)
    }
    
    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    
    func addAddingAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
}


extension OverviewNavBar {
    
    override func setupViews() {
        super.setupViews()
        addView(titleLabel)
        addView(addButton)
        addView(allWorkoutsButton)
        addView(weekView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            
            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weekView.topAnchor.constraint(equalTo: allWorkoutsButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47)
            
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .systemBackground
        
        titleLabel.text = R.Strings.NavBar.overview
        titleLabel.textColor = R.Colors.titleGrey
        titleLabel.font = R.Fonts.helveticaRegular(with: 22)
        
        allWorkoutsButton.setTitle(R.Strings.Overview.allWorkoutsButton)
        addButton.setImage(R.Images.Common.add, for: .normal)
    }
    
    
}


