//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 06.09.2023.
//

import UIKit

class ProgressController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        title = "Workout progress"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.progress
        
        addNavBarButton(at: .left, with: Resources.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Progress.navBarRight)
    }
    
}
