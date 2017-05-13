//
//  TabBarController.swift
//  3RA_EVA_2_TABS_DATOS
//
//  Created by  on 02/05/17.
//3RA_EVA_2_TABS_DATOS, con nombre de vista se redireccionara a la ventana que corresponde, con el uso de tabs y uso de clases TabBarController y UIViewController>
//Written by:<Juan Humberto Chacon Holguin>
//<13550355>
//<Plataforma I>
//
//

import UIKit

class TabBarController: UITabBarController {
    //var sCade = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // func tabBar didSelectItem, al seleccionar una vista comparandola con la posicion en la que se encuentra la vista, ya seleccionando una vista se desplegara un mensaje
    override func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        var sTit = ""
         if(item == tabBar.items![0]){
            sTit = "UNO"
        }else if( item == tabBar.items![1]){
        sTit = "DOS"
         }else{
        sTit = "TRES"
        }
        let alert = UIAlertController(title: sTit, message: "Hola mundo", preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
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
