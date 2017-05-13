//
//  BlueViewController.swift
//  3RA_EVA_4_MULTI_VIEW_A_PATIN2
//
//  Created by  on 04/05/17.
//
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // La accion del boton mostrara un mensaje con lo siguiente "You pressed the button on the blue view"
    @IBAction func blueButtonPressed(sender: UIButton) {
        let alert = UIAlertController(title: "Blue View Button Pressed", message: "You pressed the button on the blue view", preferredStyle: .Alert)
        let action = UIAlertAction(title: "Yep, I did", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
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
