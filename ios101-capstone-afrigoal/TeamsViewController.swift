//
//  TeamsViewController.swift
//  ios101-capstone-afrigoal
//
//  Created by Qetsia Nkulu  on 11/8/23.
//

import UIKit
import Nuke
 
class TeamsViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print("🍏 numberOfRowsInSection called with teams count: \(teams.count)")
        
        // return the number of rows for the table
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("🍏 cellForRowAt called for row: \(indexPath.row)")
        
        // Create the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCell", for: indexPath) as! TeamCell 
        
        // get the team associated with table view row
        let team = teams[indexPath.row]
        
        let flag = team.id
        let flagUrlString = "https://livescore-api.com/api-client/countries/flag.json?key=HUFF2p7jSWrpDFvU&secret=15O4gzFNRP8dOiLwcqcfPjyHgZ6TFBOH&team_id=" + flag
        
        if let flagUrl = URL(string: flagUrlString) {
            // Use Nuke library load image function to (async) fethc and load the image from the image URL
            Nuke.loadImage(with: flagUrl, into: cell.teamFlagImageView)
        } else {
            print("🚨 Invalid URL for image")
        }
        
        // set the text on the labels
        cell.teamNameLabel.text = team.name
        cell.teamHomeStadiumLabel.text = team.stadium
        
        // Return the cell for use in the respective table view row
        return cell
    }
 
    // table view outlet
    @IBOutlet weak var tableView: UITableView!
    
    private var teams : [Team] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true // lab 5, step 3
        
        // assign table view data soirce
        tableView.dataSource = self
        
        fetchTeams()
    }
    
    // Fetches all the teams participating in the Africa Cup of Nations from Live Scores API
    private func fetchTeams(){
        
        // the URL(string:) initializer returns an optional URL so we have to unwrap
        let url = URL(string: "https://livescore-api.com/api-client/competitions/participants.json?key=HUFF2p7jSWrpDFvU&secret=15O4gzFNRP8dOiLwcqcfPjyHgZ6TFBOH&competition_id=227&season=2023")!
        
        let session = URLSession.shared.dataTask(with: url) { data, response, error in
            
            // check for errors
            if let error = error {
                print("🚨 Request failed: \(error.localizedDescription)")
                return
            }
            
            // check for server errors
            // Make sure the response is within the `200-299` range (the standard range for a successful response).
            guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
                print("🚨 Server Error: response: \(String(describing: response))")
                return
            }
            
            guard let data = data else {
                print("🚨 No data returned from request")
                return
            }
            
            // The JSONDecoder's decode function can throw an error. To handle any errors, wrap it in a `do-catch` block
            do {
                // Decode the JSON data into our custom `TeamsResponse` model.
                let teamsResponse = try JSONDecoder().decode(TeamResponse.self, from: data)
                
                // access the array of competition participants
                let teams = teamsResponse.data
                
                // Run any code that will update UI on the main thread
                DispatchQueue.main.async { [weak self] in
                    
                    // debugging
                    print("✅ SUCCESS!!! Fetched \(teams.count) teams")
                          
                    // iterate over all teams and print out their details
                    for team in teams {
                        print("⚽️ Soccer Teams ------------------")
                        print("Id: \(team.id)")
                        print("National Team: \(team.name)")
                        print("Home Stadium: \(team.stadium)")
                        
                    }
                          
                    // TODO: Store teams in the `teams` property on the view controller
                    // Update the teams property so we can access team data anywhere in the view controller
                    self?.teams = teams
                    self?.tableView.reloadData()

                    print("🍏 Fetched and stored \(teams.count) teams")
                }
               } catch {
                    print("🚨 Error decoding JSON data into Team Response: \(error.localizedDescription)")
                    return
                        
               }
        }
        
        session.resume() // start the async network request
    }

    
}
