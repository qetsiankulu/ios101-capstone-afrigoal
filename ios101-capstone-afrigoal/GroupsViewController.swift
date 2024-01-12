//
//  GroupsViewController.swift
//  ios101-capstone-afrigoal
//
//  Created by Qetsia Nkulu  on 11/17/23.
//

import UIKit

class GroupsViewController: UIViewController, UITableViewDataSource {
    let groups: [Group] = [
        Group(name: "Group A", teams: ["Ivory Coast", "Nigeria", "Equatorial Guinea", "Guinea-Bissau"]),
        Group(name: "Group B", teams: ["Cape Verde", "Egypt", "Ghana", "Mozambique"]),
        Group(name: "Group C", teams: ["Senegal", "Cameroon", "Gambia", "Guinea"]),
        Group(name: "Group D", teams: ["Algeria", "Burkina Faso", "Mauritania", "Angola"]),
        Group(name: "Group E", teams: ["Tunisia", "Mali", "South Africa", "Nambia"]),
        Group(name: "Group F", teams: ["Morocco", "DR Congo", "Zambia", "Tanzania"]),
        
    ]

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create cell 
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! GroupCell
        
        // Clear existing rows in the cell
        for subview in cell.mainStackView.arrangedSubviews {
              subview.removeFromSuperview()
          }
        
        // Add group title row
        cell.addRow(withText: groups[indexPath.row].name, rowType: .title)

        // Add stats row
        cell.addRow(withText: "W L", rowType: .stats)
        
        // Add 4 teams for each group
        // Add teams for the current group
              for teamName in groups[indexPath.row].teams {
                  cell.addRow(withText: teamName, rowType: .team)
              }

        // Return the cell for use in the respective table view row
           return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self

        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Set the bar background color
        let customColor = UIColor(red: 220/255.0, green: 105/255.0, blue: 0/255.0, alpha: 1.0)
           navigationController?.navigationBar.barTintColor = customColor
        
    }
    


}
