//
//  ViewController.swift
//  3RA_EVA_3_MULTI_VIEW_A_PATIN
//
//  Created by  on 03/05/17.
//
//

import UIKit

class ViewController: UIViewController {

   
    @IBAction func ViewUno(sender: UIButton) {
        let otherContr = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("view") as UIViewController
        presentViewController(otherContr, animated: true, completion: nil)
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

