//
//  UNOViewController.swift
//  3RA_EVA_2_TABS_DATOS
//
//  Created by  on 02/05/17.
// Created
//< Plataforma I>
//

import UIKit

class UNOViewController: UIViewController {

    @IBOutlet weak var lblUno: UILabel!
    var sCade = " INICIO"// Segunda parte de la practica
    override func viewDidLoad() {
        super.viewDidLoad()
        // Se imprimira TRES- View DidLoad cada vez que se carque la clase, solo se imprimira una vez entrando a la venta si vuelve a entrar no se imprimira este mensaje.
        print("UNO - View DidLoad")

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("UNO- ViewWillAppear")
        //let global = self.tabBarController as! TabBarController
        //lblUno.text = global.sCade
        lblUno.text = sCade
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
