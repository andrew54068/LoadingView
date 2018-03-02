//
//  ViewController.swift
//  LoadingView
//
//  Created by kidnapper on 26/02/2018.
//  Copyright © 2018 25sprout.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var left: UIButton!
    @IBOutlet var right: UIButton!
    
    @IBAction func leftAction(_ sender: Any) {
        let alertController = UIAlertController(title: "", message: "", preferredStyle: .actionSheet)
        
        //to change font of title and message.
        let titleFont = [NSAttributedStringKey.font: UIFont(name: "ArialHebrew-Bold", size: 18.0)!]
        let messageFont = [NSAttributedStringKey.font: UIFont(name: "Avenir-Roman", size: 12.0)!]
        
        let titleAttrString = NSMutableAttributedString(string: "Title Here", attributes: titleFont)
        let messageAttrString = NSMutableAttributedString(string: "Message Here", attributes: messageFont)
        
        alertController.setValue(titleAttrString, forKey: "attributedTitle")
        alertController.setValue(messageAttrString, forKey: "attributedMessage")
        
        let action1 = UIAlertAction(title: "Action 1", style: .default) { (action) in
            print(action.title)
        }
        
        let action2 = UIAlertAction(title: "Action 2", style: .default) { (action) in
            print(action.title)
        }
        
        let action3 = UIAlertAction(title: "Action 3", style: .default) { (action) in
            print(action.title)
        }
        
        let okAction = UIAlertAction(title: "Ok", style: .default) { (action) in
            print(action.title)
        }
        
        alertController.addAction(action1)
        alertController.addAction(action2)
        alertController.addAction(action3)
        alertController.addAction(okAction)
        
        alertController.view.tintColor = UIColor.blue
        alertController.view.backgroundColor = UIColor.black
        alertController.view.layer.cornerRadius = 40
        
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func rightAction(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

