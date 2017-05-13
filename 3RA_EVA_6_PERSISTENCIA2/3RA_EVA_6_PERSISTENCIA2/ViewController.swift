//
//  ViewController.swift
//  3RA_EVA_6_PERSISTENCIA2
//
//  Created by  on 09/05/17.
//<13550355>
//<Plataforma I>
//<created by JUAN HUMBERTO CHACON HOLGUIN>
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var miSliders: [UISlider]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnGuardar(sender: UIButton) {
    //OBtener la ruta del directiorio donde se guardara
        let tempDir = NSTemporaryDirectory()
        //Obteber la URL
        let tempURL = NSURL(fileURLWithPath: tempDir)
        //Nombre del archivo a crear y guardar
        let archivo = tempURL.URLByAppendingPathComponent("Texto.txt")
        // se leera el arrelgo linea por linea, es de caracteres especiales
        let arreglo = (miSliders as NSArray).valueForKey("value") as! NSArray
        arreglo.writeToURL(archivo, atomically: true)// Guardara el archvio
        
    }
    @IBAction func btnLeer(sender: UIButton) {
        //OBtener la ruta del directiorio donde se guardara
        let tempDir = NSTemporaryDirectory()
        //Obteber la URL
        let tempURL = NSURL(fileURLWithPath: tempDir)
        //Nombre del archivo a crear y guardar
        let archivo = tempURL.URLByAppendingPathComponent("Texto.txt")
        if (NSFileManager.defaultManager().fileExistsAtPath(archivo.path!)){// checar que el documento exista para poder jalar los datos de tipo strings
            if let arreglo = NSArray(contentsOfURL: archivo) as? [Double]{
                var cade = " "
                for i in 0..<arreglo.count{
                    cade = cade + "\(arreglo[i])" + "\n"
                }
                textViedDatos.text = cade
            }
        }
    }
    @IBOutlet weak var lblInfo: UILabel!
    @IBOutlet weak var textViedDatos: UITextView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

