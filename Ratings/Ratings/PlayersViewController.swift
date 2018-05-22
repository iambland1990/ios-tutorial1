//
//  PlayersViewController.swift
//  Ratings
//
//  Created by Ryan Bland on 5/18/18.
//  Copyright © 2018 training. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController {
    
    //Mark: - Properties
    var players =  SampleData.generatePlayersData()
}


extension PlayersViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath) as! PlayerCell
        let player = players[indexPath.row]
        cell.player = player
        return cell
    }
}
