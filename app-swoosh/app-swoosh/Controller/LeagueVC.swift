//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Daniel Winship on 12/20/17.
//  Copyright © 2017 Daniel Winship. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player:Player!

        @IBOutlet weak var nextButton:BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
