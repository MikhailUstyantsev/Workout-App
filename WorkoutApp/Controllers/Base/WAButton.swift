//
//  SecondaryButton.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 07.09.2023.
//

import UIKit

public enum WAButtonType {
    case primary
    case secondary
}

final class WAButton: UIButton {
    
    private var type: WAButtonType = .primary
    
    private let label = UILabel()
    private let iconView = UIImageView()
    
    init(with type: WAButtonType) {
        super.init(frame: .zero)
        self.type = type
        
        addViews()
        layoutView()
        configure()

    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        addViews()
        layoutView()
        configure()
    }
    
    func setTitle(_ title: String?) {
        label.text = title
    }
    
}


private extension WAButton {
    
    func addViews() {
        addView(label)
        addView(iconView)
    }
    
    func layoutView() {
        
        var horizontalOffset: CGFloat {
            switch type {
            case .primary: return 0
            case .secondary: return 10
            }
        }
        
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horizontalOffset),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -10),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horizontalOffset * 2)
        ])
    }
    
    func configure() {
        
        switch type {
        case .primary:
            label.textColor = R.Colors.inactive
            iconView.tintColor = R.Colors.inactive
            label.font = R.Fonts.helveticaRegular(with: 13)
            
        case .secondary:
            backgroundColor = R.Colors.secondary
            layer.cornerRadius = 14
            label.textColor = R.Colors.active
            label.font = R.Fonts.helveticaRegular(with: 15)
            iconView.tintColor = R.Colors.active
        }
        
       
        makeSystem(self)
        
        label.textAlignment = .center
        
        iconView.image = R.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        
    }
    
    
}
