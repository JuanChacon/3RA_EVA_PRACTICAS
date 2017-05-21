//
//  ViewController.swift
//  3RA_EVA_8_AGREGAR_DATOS
//
//  Created by  on 16/05/17.
//////<13550355>
//<Plataforma I>
//<created by JUAN HUMBERTO CHACON HOLGUIN>
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    var arreglo: NSMutableArray = []
    
    func obruta() -> NSURL{
     let temp = NSTemporaryDirectory()
     let tempdirURL = NSURL(fileURLWithPath: temp)
     let tempDirFile = tempdirURL.URLByAppendingPathComponent("milista.plist")
        return tempDirFile
    }

    @IBOutlet weak var txtDatos: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //ABRIR EL ARCHIVO, LEER DATOS, AGREGAR AL ARRREGLO
        let ruta = obruta()
        if(NSFileManager.defaultManager().fileExistsAtPath(ruta.path!)){
            arreglo = NSMutableArray(contentsOfURL: ruta)!
        }
    }
    @IBOutlet weak var tlbView: UITableView!

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // obtener la ruta, se le mandara informacion atraves del input
    @IBAction func action(sender: UIButton) {
        let ruta = obruta()
        let sCade = txtDatos.text
        arreglo.addObject(sCade!)
        arreglo.writeToURL(ruta, atomically: true)
        tlbView.reloadData()
        
    }
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreglo.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let celda = tableView.dequeueReusableCellWithIdentifier("myCell")
        celda?.textLabel?.text = arreglo[indexPath.row] as? String
        return celda!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let ruta = obruta()
        let controlador = UIAlertController(title:"Tus datos",message: "Esta a punto de eliminar",preferredStyle: .Alert)
        let boton = UIAlertAction(title: "ok",style: .Default,handler: nil)
        let boton2 = UIAlertAction(title: "no",style: .Default,handler: nil)
        controlador.addAction(boton)
        controlador.addAction(boton2)
        presentViewController(controlador, animated: true, completion: nil)
                //let ruta = obruta()
           arreglo.removeObject(arreglo[indexPath.row])
          arreglo.writeToURL(ruta, atomically: true)
        

        tlbView.reloadData()
        
        
        
        
    }
    
    


}

