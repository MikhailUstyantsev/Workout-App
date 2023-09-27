//
//  Resources.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 06.09.2023.
//

import UIKit

enum R {
    enum Colors {
        static let active = UIColor(hexString: "#437BFE")
        static let inactive = UIColor(hexString: "#929DA5")

        static let background = UIColor(hexString: "#F8F9F9")
        static let separator = UIColor(hexString: "#E8ECEF")
        static let secondary = UIColor(hexString: "#F0F3FF")
        
        static let titleGrey = UIColor(hexString: "#545C77")
        static let subtitleGrey = UIColor(hexString: "#D8D8D8")
    }
    
    enum Strings {
        enum TabBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
        
        enum Session {
            static let navBarStart = "Start   "
            static let navBarPause = "Pause"
            static let navBarFinish = "Finish"
            
            static let elapsedTime = "Elapsed Time"
            static let remainingTime = "Remaining Time"
            
            static let completedStr = "COMPLETED"
            static let remainingStr = "REMAINING"
            
            static let workoutStats = "Workout stats"
            static let averagePace = "Average pace"
            static let heartRate = "Heart rate"
            static let totalDistance = "Total distance"
            static let totalSteps = "Total steps"
            
            static let stepsCounter = "Steps Counter"
        }
        
        enum Progress {
            static let navBarLeft = "Export"
            static let navBarRight = "Details"
            
            static let dailyPerformance = "Daily performance"
            static let last7Days = "Last 7 days"
            
            static let monthlyPerformance = "Monthly performance"
            static let last10Months = "Last 10 months"
        }
        
        enum Overview {
            static let allWorkoutsButton = "All Workouts"
        }
        
        enum NavBar {
            static let overview = "Today"
        }
        
    }
    
    enum Images {
        enum TabBar {
            static let overview = UIImage(named: "HouseIcon")
            static let session = UIImage(named: "ClockIcon")
            static let progress = UIImage(named: "AnalyticsBars")
            static let settings = UIImage(named: "GearIcon")
        }
        
        enum Common {
            static let downArrow = UIImage(named: "down_arrow")
            static let add = UIImage(named: "add_button")
        }
        
        enum Overview {
            static let  rightArrow = UIImage(named: "right_arrow")
            static let  emptyCircle = UIImage(named: "empty_circle")
            static let  checked = UIImage(named: "checked")
        }
        
        enum Session {
            enum Stats {
                static let averagePace = UIImage(named: "stats_averagePace")
                static let heartRate = UIImage(named: "stats_heartRate")
                static let totalDistance = UIImage(named: "stats_totalDistance")
                static let totalSteps = UIImage(named: "stats_totalSteps")
            }
        }
        
        
    }
    
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
    
}
