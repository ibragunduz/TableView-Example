//
//  DetailPageViewController.swift
//  TableView Example
//
//  Created by ibrahim gunduz on 30.08.2017.
//  Copyright © 2017 ibragunduz. All rights reserved.
//

import UIKit

class DetailPageViewController: UIViewController {
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
    
    var name = ""
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        personImageView.image = image
        infoLabel.text = "His name is \(name)"
        personImageView.image = image
        
        
        
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
