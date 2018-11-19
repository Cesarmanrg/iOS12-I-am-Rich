//
//  ViewController.swift
//  01-iamrich
//
//  Created by Smartlive on 8/29/18.
//  Copyright © 2018 GrupoSite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // PROPERTYS -- > Outlet
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageViewDiamond: UIImageView!
    @IBOutlet weak var buttonPush: UIButton!
    
    // Función
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // METHODS
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        /** self se antepone para acceder a las propertys de la misma clase donde te encuentras
        self.labelTitle.text = "He pulsado el boton"
        self.labelTitle.textColor = UIColor.green
        self.labelTitle.font = UIFont.systemFont(ofSize: 20)
        
        self.imageViewDiamond.image = UIImage(named: "homero")**/
        
       
        /** Mandamos a presentar la Alerta**/
        let controller = UIAlertController(title: "I am Rich", message: """
                                                   I am rich,
                                                   I deserv it.
                                                   I am good,
                                                   healthy & successful,
                                                   """, preferredStyle: .actionSheet)
        /** show para mostrar**/
        self.show(controller, sender: nil)
        
        /** handler es la accion cuando se pulsa el boton**/
        let action = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            //print("He pulsado el botón Aceptar")
            self.suna()
        }
        controller.addAction(action)

        let action2 = UIAlertAction(title: "Destructive!", style: .destructive, handler: { (action2) in
            
            print("He pulsado el botón Destruir")
        
        })
        controller.addAction(action2)

        let action3 = UIAlertAction(title: "Cancel", style: .cancel){ _ in
            print("He pulsado el botón Cancelar")
        }
        controller.addAction(action3)
    }
    
    func suna(){
        
        let num1: Int = 10
        let num2: Int = 20
        let result: Int = num1 + num2
        let imprimir = String(result)
        
        
        let message = UIAlertController(title: "El resultado de la suma es:", message: imprimir, preferredStyle: .actionSheet)
        self.show(message, sender: nil)
        
        let OK = UIAlertAction(title: "OK!", style: .cancel, handler: nil)
        message.addAction(OK)
        
        
    }
}


