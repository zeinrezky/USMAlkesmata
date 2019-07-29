//
//  homeViewController.swift
//  USM Alkesmata
//
//  Created by LaWave Design on 1/30/19.
//  Copyright © 2019 Universal Star Multilink. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {
    
    var optPicked = Int()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func guestButton(_ sender: Any) {
        optPicked = 2
        buttonPressed()
    }
    
    
    @IBAction func memberButton(_ sender: Any) {
        optPicked = 1
        buttonPressed()
    }
    
    func buttonPressed() {
        let loginPageViewController = self.storyboard?.instantiateViewController(withIdentifier: "loginViewController") as! loginViewController
        loginPageViewController.optPassed = optPicked
        self.present(loginPageViewController, animated: true)
    }
    

}
