//
//  RandomView.swift
//  ProjetGroupe
//
//  Created by Hamza Echbiki on 07/10/2022.
//

import Foundation
import UIKit

class RandomView:UIViewController{
    
    var gif : [Gif] = []
    
    @IBOutlet weak var testGif: UIImageView!
    var g : Gif?
    var url: String = ""
    
    override func viewDidLoad() {
        
        ApiGif.getGifs().done { gifs in
            self.gif = gifs
            
            self.g = gifs [Int.random(in: 0...gifs.count)]
            
            if let gifUrl = self.g?.urls{
                print(gifUrl)
                self.url = gifUrl
                
            super.viewDidLoad()
        }
            print(self.url)
            self.testGif.image = UIImage.gifImageWithURL(self.url)
}
    }
}

