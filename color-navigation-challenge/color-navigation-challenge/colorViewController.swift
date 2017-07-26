//
//  colorViewController.swift
//  color-navigation-challenge
//
//  Created by Kevin Brennan on 7/21/17.
//  Copyright © 2017 Kevin Brennan. All rights reserved.
//

import UIKit

class colorViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    //var colors = ["red","orange","yellow","green","blue","purple","brown"]

    var colors = [Color(name: "red", uiColor: UIColor.red),
        Color(name: "orange", uiColor: UIColor.orange),
        Color(name: "yellow", uiColor: UIColor.yellow),
        Color(name: "green", uiColor: UIColor.green),
        Color(name: "blue", uiColor: UIColor.blue),
        Color(name: "purple", uiColor: UIColor.purple),
        Color(name: "brown", uiColor: UIColor.brown)
    ]
    
    
    @IBOutlet weak var colorsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Colors"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].uiColor
        
        return cell
        
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? colorDetailViewController,
            let row = colorsTableView.indexPathForSelectedRow?.row
        {
            destination.color = colors[row]
        }
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
