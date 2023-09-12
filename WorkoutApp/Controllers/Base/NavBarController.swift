//
//  NavBarController.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 06.09.2023.
//

import UIKit

class NavBarController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .systemBackground
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGrey as Any,
            .font: Resources.Fonts.helveticaRegular(with: 17)
        ]
        
        navigationBar.addBottomBorder(with: Resources.Colors.separator, height: 1)
    }

}
