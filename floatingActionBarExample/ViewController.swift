//
//  ViewController.swift
//  floatingActionBarExample
//
//  Created by Lut Dinar Fadila on 10/23/18.
//  Copyright © 2018 Lut Dinar Fadila. All rights reserved.
//

import UIKit
import Floaty

class ViewController: UIViewController {

    @IBOutlet weak var floaty: Floaty!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        floaty.addItem(title: "Hello World")
        addFloatingActionButton()
    }
    
    func addFloatingActionButton() {
        
        floaty.addItem(title: "Alert", handler: { item in
            let alert = UIAlertController(title: "Info", message: "Menampilkan pesan informasi", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            self.floaty.close()
        })
        
        floaty.addItem(title: "Detail", handler: { item in
            self.performSegue(withIdentifier: "secondView", sender: self)
        })
        
    }


}

