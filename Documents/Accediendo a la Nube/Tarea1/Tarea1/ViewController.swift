//
//  ViewController.swift
//  Tarea1
//
//  Created by Vital Sistemas on 13/01/16.
//  Copyright © 2016 Vital Sistemas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var ISBNText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.textView.text  = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buscarISBN(sender: AnyObject) {
        ISBNText.resignFirstResponder()
        let isbn = ISBNText.text
        let urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN"+isbn!
        let url = NSURL(string: urls)
        
        
        let datos:NSData? = NSData(contentsOfURL: url!)
        let texto = NSString(data:datos!, encoding: NSUTF8StringEncoding)
        self.textView.text = texto! as String
        
    }

    @IBAction func limpiarTexto(sender: AnyObject) {
        ISBNText.text = ""
    }

}

