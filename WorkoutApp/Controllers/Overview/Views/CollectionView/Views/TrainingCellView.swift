//
//  TrainingCellView.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 28.09.2023.
//

import UIKit

enum CellRoundedType {
    case top, bottom, all, notRounded
}

final class TrainingCellView: UICollectionViewCell {
    
    static let id = "TrainingCellView"
    
    private let checkmarkView = UIImageView(image: R.Images.Overview.emptyCircle)
    
    private let rightArrowView = UIImageView(image: R.Images.Overview.rightArrow)
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 3
        return stackView
    }()
    
    private let title: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(with: 17)
        label.textColor = R.Colors.titleGrey
        return label
    }()
    
    private let subtitle: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(with: 13)
        label.textColor = R.Colors.inactive
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
    
    func configure(with title: String, subtitle: String, isDone: Bool, roundedType: CellRoundedType) {
        self.title.text = title
        self.subtitle.text = subtitle
        
        checkmarkView.image = isDone ? R.Images.Overview.checked : R.Images.Overview.emptyCircle
        
        switch roundedType {
        case .top:
            self.roundCorners([.topRight, .topLeft], radius: 5)
        case .bottom:
            self.roundCorners([.bottomRight, .bottomLeft], radius: 5)
        case .all:
            self.roundCorners([.allCorners], radius: 5)
        case .notRounded:
            self.roundCorners([.allCorners], radius: 0)
        }
    }
    
}


private extension TrainingCellView {
    
    func setupViews() {
        addView(stackView)
        stackView.addArrangedSubview(title)
        stackView.addArrangedSubview(subtitle)
        addView(checkmarkView)
        addView(rightArrowView)
    }
    
    
    func constraintViews() {
        
        NSLayoutConstraint.activate([
            checkmarkView.centerYAnchor.constraint(equalTo: centerYAnchor),
            checkmarkView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            checkmarkView.heightAnchor.constraint(equalToConstant: 28),
            checkmarkView.widthAnchor.constraint(equalTo: checkmarkView.heightAnchor),
            
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: checkmarkView.trailingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: rightArrowView.leadingAnchor, constant: -15),

            rightArrowView.centerYAnchor.constraint(equalTo: centerYAnchor),
            rightArrowView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            rightArrowView.heightAnchor.constraint(equalToConstant: 12),
            rightArrowView.widthAnchor.constraint(equalToConstant: 7)
        
        ])
    }
    
    
    func configureAppearance() {
        backgroundColor = .white
    }
    
   
    
}
