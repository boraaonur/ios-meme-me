//
//  MemeDetailViewController.swift
//  MemeMe
//
//  Created by Bora A.  on 17.05.2018.
//  Copyright © 2018 Bora A. ONUR. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedMeme: Meme?
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = selectedMeme?.memedImage
    }

    

}
