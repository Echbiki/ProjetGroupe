//
//  ViewController.swift
//  ProjetGroupe
//
//  Created by Hamza Echbiki on 30/09/2022.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Web: UIWebView!
    @IBOutlet weak var image: UIImageView!
    

    
    override func viewDidLoad() {
        
            
        
    super.viewDidLoad()
        
       
     //Affichage de l'image a partir de l'URL
       Web.loadRequest(NSURLRequest(url: URL(string: "https://media.tenor.com/qrmNZcikNhEAAAAC/where-is-my-gif.gif")!) as URLRequest)
         
    }
}
    
