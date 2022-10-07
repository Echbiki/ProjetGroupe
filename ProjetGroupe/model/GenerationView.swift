//
//  GenerationView.swift
//  ProjetGroupe
//
//  Created by Hamza Echbiki on 07/10/2022.
//

import Foundation
import UIKit

class GenerationView:UIViewController{
    
    @IBOutlet weak var Web: UIWebView!
    
    var gifs: [Gif]?
    var currentGif: Gif?
    
    override func viewDidLoad() {
        
        ApiGif.getGifs().done { gifs in
            self.gifs = gifs
            self.currentGif = gifs[0]
        }
    }
    
    
    func getRandomGif() -> Gif? {
        if let gifs = self.gifs {
            return gifs[Int.random(in: 0...200)]
        }
        return nil
    }
    
    
}
