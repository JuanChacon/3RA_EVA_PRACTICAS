//
//  UNOViewController.swift
//  3RA_EVA_3_MULTI_VIEW_A_PATIN
//
//  Created by  on 03/05/17.
//3RA_EVA_3_MULTI_VIEW_A_PATIN, con nombre de vista se redireccionara a la ventana que corresponde, ya que se le delcaro un id de main, con el uso de vistas y uso de clases UIViewController>
//Written by:<Juan Humberto Chacon Holguin>
//<13550355>
//<Plataforma I>
//
//
//

import UIKit

class UNOViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func ViewRet(sender: UIButton) {
        self.dismissViewControllerAnimated(false, completion: nil)
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
