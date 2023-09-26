//
//  SectionHeaderView.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 26.09.2023.
//

import UIKit

final class SectionHeaderView: UICollectionReusableView {
    
    static let id = "SectionHeaderView"
    
    private let title: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(with: 13)
        label.textColor = R.Colors.inactive
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    func configure(with title: String) {
        self.title.text = title.uppercased()
    }
    
}


private extension SectionHeaderView {
    
    func setupViews() {
        addView(title)
    }
    
    
    func constraintViews() {
        
        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            title.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    
    func configureAppearance() {
        
    }
    
   
    
}
