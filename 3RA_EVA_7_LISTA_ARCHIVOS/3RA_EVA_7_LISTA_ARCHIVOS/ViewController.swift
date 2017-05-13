//
//  ViewController.swift
//  3RA_EVA_7_LISTA_ARCHIVOS
//
//  Created by  on 11/05/17.
////<13550355>
//<Plataforma I>
//<created by JUAN HUMBERTO CHACON HOLGUIN>
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var arreDatos: [String: [String]]!
    var arreClaves:[String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //acceder al archivo plist, uso de Bunndles
        let ruta = NSBundle.mainBundle().pathForResource("sortednames", ofType: "plist")
        print(ruta)
        let diccDatos = NSDictionary(contentsOfFile: ruta!)
        arreDatos = diccDatos as! [String: [String]]
        arreClaves = (diccDatos!.allKeys as! [String]).sort()
    }
    //cantidad de datos
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return arreClaves.count
    }
    //func numberOfRowsInSection numero de filas en cada seccion
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let clave = arreClaves[section]
        let nomSec = arreDatos[clave]!
        return nomSec.count
    }
    
    // func cellForAtIndexPath llenar la celda con los datos
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier( "miCell", forIndexPath: indexPath) as UITableViewCell
        
        let clave = arreClaves[indexPath.section]
        let nombreSeccion = arreDatos[clave]!
        celda.textLabel?.text = nombreSeccion[indexPath.row]
        
        return celda
    
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arreClaves[section]
    }
    
    //agregar indice
    
    func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
        return arreClaves
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

