//
//  DOSViewController.swift
//  3RA_EVA_2_TABS_DATOS
//
//  Created by  on 02/05/17.
//
//

import UIKit

class DOSViewController: UIViewController {

    @IBOutlet weak var LblDos: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Se imprimira TRES- View DidLoad cada vez que se carque la clase, solo se imprimira una vez entrando a la venta si vuelve a entrar no se imprimira este mensaje.
        print("DOS - View DidLoad")

        // Do any additional setup after loading the view.
    }
    // esta funcion se ejecutara cada que entre a las diferentes clases o ventanas
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("DOS- ViewWillAppear")
        //let global = self.tabBarController as! TabBarController Segunda parte de la prac
        //global.sCade = "HOLA MUNDO DESTRUIDO"
        let misViewsControlers = self.tabBarController?.viewControllers // Lista de ViewControllers
        let unoViewController = misViewsControlers![0] as! UNOViewController //Accede a buscarlo
        unoViewController.sCade = "HOLA MUNDO DESTRUIDO" // accede al viewController, a la variable sCade
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
