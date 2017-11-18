//
//  ViewController.swift
//  TextInAndOut
//
//  Created by Anna Nguyen on 10/24/17.
//  Copyright © 2017 Anna Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loremIpsumView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loremIpsumView.delegate = self
        if let font = UIFont(name: "Chalkduster", size: 20.0) {
            loremIpsumView.font = UIFontMetrics.default.scaledFont(for: font)
        }
        //  loremIpsumView.font = UIFontDescriptor(name: "Chalkduster", size: 20.0)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension UIViewController: UITextViewDelegate {
    public func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        return true
    }
}

