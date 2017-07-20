//
//  ViewController.swift
//  CodeClass
//
//  Created by kliklabs indo kreasi on 7/20/17.
//  Copyright © 2017 kliklabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelUtama: UILabel!
    @IBOutlet weak var buttonSubmit: UIButton!
    @IBOutlet weak var InputText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClick(sender: AnyObject) {
        let changeLabelTo = InputText.text
        self.labelUtama.text = changeLabelTo
    }

}

