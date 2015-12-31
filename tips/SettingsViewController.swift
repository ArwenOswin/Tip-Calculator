//
//  SettingsViewController.swift
//  tips
//
//  Created by AmeliaPond on 15-12-25.
//  Copyright (c) 2015年 CodingCat. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var defaultPercentageChoice: UISegmentedControl!

    @IBAction func percentageChanged(sender: AnyObject) {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        let defaultPercentageIndex = defaultPercentageChoice.selectedSegmentIndex
        
        defaults.setInteger(defaultPercentageIndex, forKey: "default percentage")
        
        defaults.synchronize()
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
