//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 06.09.2023.
//

import UIKit

enum Tabs: Int, CaseIterable {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
        switchTo(tab: .session)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .systemBackground
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let settingsController = SettingsController()

        let overviewNavigation = NavBarController(rootViewController: overviewController)
        let sessionNavigation = NavBarController(rootViewController: sessionController)
        let progressNavigation = NavBarController(rootViewController: progressController)
        let settingsNavigation = NavBarController(rootViewController: settingsController)
        
        overviewNavigation.tabBarItem = UITabBarItem(
                                        title: Resources.Strings.TabBar.overview,
                                        image: Resources.Images.TabBar.overview,
                                        tag: Tabs.overview.rawValue)
        sessionNavigation.tabBarItem = UITabBarItem(
                                        title: Resources.Strings.TabBar.session,
                                        image: Resources.Images.TabBar.session,
                                        tag: Tabs.session.rawValue)
        progressNavigation.tabBarItem = UITabBarItem(
                                        title: Resources.Strings.TabBar.progress,
                                        image: Resources.Images.TabBar.progress,
                                        tag: Tabs.progress.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(
                                        title: Resources.Strings.TabBar.settings,
                                        image: Resources.Images.TabBar.settings,
                                        tag: Tabs.settings.rawValue)
        
        setViewControllers([
                            overviewNavigation,
                            sessionNavigation,
                            progressNavigation,
                            settingsNavigation
                             ], animated: false)
    }
    
    
    func switchTo(tab: Tabs) {
        selectedIndex = tab.rawValue
    }
    
}
