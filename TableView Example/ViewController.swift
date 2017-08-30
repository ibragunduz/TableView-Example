//
//  ViewController.swift
//  TableView Example
//
//  Created by ibrahim gunduz on 30.08.2017.
//  Copyright © 2017 ibragunduz. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var names = [String]()
    var images = [UIImage]()
    
    var selectedName = ""
    var selectedImage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            myTableView.dataSource = self
            myTableView.delegate = self
            initializeArrays()
    
    
    }
    
    
    
    func initializeArrays(){
        names.append("Ibrahim Gunduz")
        names.append("Elon Musk")
        names.append("Nikola Tesla")
        names.append("Steve Jobs")
        images.append(UIImage(named: "ibrahim.jpg")!)
        images.append(UIImage(named: "elon.jpeg")!)
        images.append(UIImage(named: "tesla.jpeg")!)
        images.append(UIImage(named: "steve.jpg")!)

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
          
            let alert = UIAlertController(title: "Silindi", message: names[indexPath.row], preferredStyle: .actionSheet)
            //Bottom alert -> .actionSheet --- Center alert -> .alert
            alert.addAction(UIAlertAction(title: "Tamam", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            names.remove(at: indexPath.row)
            images.remove(at: indexPath.row)
            myTableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
            
          
            
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let myCell = UITableViewCell()
        myCell.textLabel?.text = names[indexPath.row]
        
      
       
        
        return myCell
        
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName = names[indexPath.row]
        selectedImage = images[indexPath.row]
        
        performSegue(withIdentifier: "toDetailSegue", sender: nil)

        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailSegue"{
            let dest = segue.destination as! DetailPageViewController
            dest.name = selectedName
            dest.image = selectedImage
        }
    }
   
   


}

