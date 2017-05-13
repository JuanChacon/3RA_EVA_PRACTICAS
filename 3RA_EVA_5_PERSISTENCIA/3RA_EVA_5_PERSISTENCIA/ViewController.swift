//
//  ViewController.swift
//  3RA_EVA_5_PERSISTENCIA
//
//  Created by  on 08/05/17.
////Written by:<Juan Humberto Chacon Holguin>
//<13550355>
//<Plataforma I>
//

import UIKit

class ViewController: UIViewController {
//vinculacion de los oulets y actions de la interfaz de usuario
    @IBOutlet weak var txtDatos: UITextField!
    @IBOutlet weak var lblDatos: UILabel!
    @IBAction func btnGuardar(sender: UIButton) {
        let rutaTem = NSTemporaryDirectory()
        let rutaTempUrl = NSURL(fileURLWithPath: rutaTem)
        let archivo = rutaTempUrl.URLByAppendingPathComponent("Datos.txt")
        do{
        try txtDatos.text?.writeToURL(archivo, atomically: true, encoding: NSUTF8StringEncoding)
            //lblDatos.text = String(contentsOfFile: archivo.path!, encoding: NSUTF8StringEncoding)
            // con esta linea se guarda lo que se escribe en el label, y se crea un archivo de tipo txt ----
        }catch _{
            print("Error en la creacion del archivo")
        }
    }
    @IBAction func btnLeer(sender: UIButton) {
        let rutaTem = NSTemporaryDirectory()
        let rutaTempUrl = NSURL(fileURLWithPath: rutaTem)
        let archivo = rutaTempUrl.URLByAppendingPathComponent("Datos.txt")
        do{
            try lblDatos.text = String(contentsOfFile: archivo.path!, encoding: NSUTF8StringEncoding)
            // con esta linea se guarda lo que se escribe en el txtfiel, y se crea un archivo de tipo txt ----txtDatos.text?.writeToURL(archivo, atomically: true, encoding: NSUTF8StringEncoding)
        }catch _{
            print("Error en la creacion del archivo")
        }
        
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

