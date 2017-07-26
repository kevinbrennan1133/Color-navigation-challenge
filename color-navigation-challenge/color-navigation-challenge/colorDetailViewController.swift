//
//  colorDetailViewController.swift
//  color-navigation-challenge
//
//  Created by Kevin Brennan on 7/21/17.
//  Copyright © 2017 Kevin Brennan. All rights reserved.
//

import UIKit

class colorDetailViewController: UIViewController {
    
    var color:Color?

    @IBOutlet weak var colorNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorNameLabel.text = color?.name
        self.view.backgroundColor = color?.uiColor
        self.title = color?.name
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
