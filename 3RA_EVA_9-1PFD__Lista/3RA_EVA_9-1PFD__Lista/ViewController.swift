//
//  ViewController.swift
//  3RA_EVA_9-1PFD__Lista
//
//  Created by  on 17/05/17.
////////<13550355>
//<Plataforma I>
//<created by JUAN HUMBERTO CHACON HOLGUIN>
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource  {

    
    var arreglo: NSMutableArray = []
    
    @IBOutlet weak var txtInput: UITextField!
    @IBAction func buttonAction(sender: UIButton) {
        
        let ruta = obruta()
        let sCade = txtInput.text
        arreglo.addObject(sCade!)
        arreglo.writeToURL(ruta, atomically: true)
        tlbView.reloadData()
    }
    @IBOutlet weak var tlbView: UITableView!
    
    
    func obruta() -> NSURL{
        let temp = NSTemporaryDirectory()
        let tempdirURL = NSURL(fileURLWithPath: temp)
        let tempDirFile = tempdirURL.URLByAppendingPathComponent("sortednames.plist")
        return tempDirFile
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //ABRIR EL ARCHIVO, LEER DATOS, AGREGAR AL ARRREGLO
        let ruta = obruta()
        if(NSFileManager.defaultManager().fileExistsAtPath(ruta.path!)){
            arreglo = NSMutableArray(contentsOfURL: ruta)!
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

