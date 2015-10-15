//
//  CocktailSelectionVC.swift
//  Demonstration
//
//  Created by Maxence DE CUSSAC on 14/10/2015.
//  Copyright © 2015 Maxence de Cussac. All rights reserved.
//

import Foundation
import UIKit

class CocktailSelectionVC : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.view.layoutSubviews()
        
        for view in self.view.subviews {
            if view.isKindOfClass(UIButton)
            {
                view.layer.cornerRadius = view.frame.size.width/2 - 2
                view.layer.borderWidth = 1
                view.backgroundColor = UIColor(white: 1, alpha: 1)
                view.layer.masksToBounds = true
            }
        }
    }
    
    @IBAction func addDrink(sender: UIButton) {
        let alert = UIAlertController(title: "Ajout", message: "Voulez vous vraiment prendre un cocktail?", preferredStyle: .ActionSheet)
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        alert.addAction(UIAlertAction(title: "Annuler", style: .Cancel, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
}
