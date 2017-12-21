//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Daniel Winship on 12/20/17.
//  Copyright © 2017 Daniel Winship. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    //var player:Player!
    var player = Player()

        @IBOutlet weak var nextButton:BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //player = Player()
    }


    
    @IBAction func onMensTapped(_ sender: Any) {
       selectLeague(leagueType: "mens")
        
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
     performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    
    func selectLeague(leagueType:String) {
        player.desiredLegue = leagueType
        nextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
           skillVC.player = self.player
        }
    }


}
