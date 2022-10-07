//
//  RandomView.swift
//  ProjetGroupe
//
//  Created by Hamza Echbiki on 07/10/2022.
//

import Foundation
import UIKit

class RandomView:UIViewController{
    
    @IBOutlet weak var Web: UIWebView!
    var gif : [Gif] = []
    
    var g : Gif?
    
    override func viewDidLoad() {
        
        ApiGif.getGifs().done { gifs in
            self.gif = gifs
            
            self.g = gifs [Int.random(in: 0...gifs.count - 1)]
            
            if let gifUrl = self.g?.urls{
                if let url = URL(string: self.g!.urls){
                    self.Web.loadRequest(URLRequest(url: url))
                    
                }
            super.viewDidLoad()
        }
}
    }
}

