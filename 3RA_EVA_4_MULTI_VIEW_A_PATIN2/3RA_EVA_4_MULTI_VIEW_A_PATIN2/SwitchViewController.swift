//
//  SwitchViewController.swift
//  3RA_EVA_4_MULTI_VIEW_A_PATIN2
//
//  Created by  on 04/05/17.
//
//

import UIKit

class SwitchViewController: UIViewController {
    private var blueViewController: BlueViewController!
    private var yellowViewController: YellowViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        blueViewController =
            storyboard?.instantiateViewControllerWithIdentifier("Blue") as! BlueViewController
        blueViewController.view.frame = view.frame
        switchViewController(from: nil, to: blueViewController)
    
    }

        
     override   func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
            if blueViewController != nil && blueViewController!.view.superview == nil {
                blueViewController = nil
            }
            if yellowViewController != nil && yellowViewController!.view.superview == nil { yellowViewController = nil
            }
    
    }
    
    // la funcion de este boton mandara llamar a las vistas, cada vez que se oprima el boton se ira auna vista, primero a la azul y al oprimir de nuevo el boton se ira a la vista amarilla y si vuelve a oprimir el boton lo mandara a la vista azul, cada vez que mande llamar una vista, la vista en la que estaba se destruira
    @IBAction func switchViews(sender: UIBarButtonItem) { //Boton de la barra item
        
        if yellowViewController?.view.superview == nil {
            if yellowViewController == nil {
                yellowViewController = storyboard?.instantiateViewControllerWithIdentifier("Yellow") as! YellowViewController
            }
        } else if blueViewController?.view.superview == nil { if blueViewController == nil {
            blueViewController = storyboard?.instantiateViewControllerWithIdentifier("Blue") as! BlueViewController
            } }
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.EaseOut)
        // Switch view controllers
        if blueViewController != nil && blueViewController!.view.superview != nil {
            UIView.setAnimationTransition(.FlipFromRight, forView: view, cache: true)
            yellowViewController.view.frame = view.frame
            switchViewController(from: blueViewController, to: yellowViewController)
        } else {
            UIView.setAnimationTransition(.FlipFromLeft, forView: view, cache: true)
            blueViewController.view.frame = view.frame
            switchViewController(from: yellowViewController, to: blueViewController)
        }
        UIView.commitAnimations()
        
    }
    // funcion para trasladar las vistas, de la azul a la amarilla y de la amarilla a la azul
    private func switchViewController(from fromVC:UIViewController?, to toVC:UIViewController?) {
        if fromVC != nil {
            fromVC!.willMoveToParentViewController(nil)
            fromVC!.view.removeFromSuperview()
            fromVC!.removeFromParentViewController()
        }
        if toVC != nil {
           self.addChildViewController(toVC!)
           self.view.insertSubview(toVC!.view, atIndex: 0)
           toVC!.didMoveToParentViewController(self)
        }
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
