//
//  HomeViewController.swift
//  ios101-capstone-afrigoal
//
//  Created by Qetsia Nkulu  on 11/7/23.
//

import UIKit

class HomeScreenViewController: UIViewController {
    
    @IBOutlet weak var daysLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondsLabel: UILabel!
    
    let targetDate = "2024-01-13 20:00:00" // cup of nations starts on jan 13 2024
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a Timer to update the countdown
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCountdown), userInfo: nil, repeats: true)
        
        // Call the updateCountdown method immediately to set the initial countdown values
        updateCountdown()
        
    
        }
    
    @objc func updateCountdown() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        if let targetDate = dateFormatter.date(from: self.targetDate) {
            let currentDate = Date()
            
            let calendar = Calendar.current
            let components = calendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: targetDate)
            
            // Update the labels with the remaining time components
            daysLabel.text = String(format: "%02d", components.day ?? 0)
            hoursLabel.text = String(format: "%02d", components.hour ?? 0)
            minutesLabel.text = String(format: "%02d", components.minute ?? 0)
            secondsLabel.text = String(format: "%02d", components.second ?? 0)
        }
        
    }
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         
         */
        
}
