//
//  ViewController.swift
//  sameh
//
//  Created by mostfa on 8/18/19.
//  Copyright © 2019 mostfa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  

    let dataSource = [
        samehCard(image: #imageLiteral(resourceName: "me.jpg"), rating: 5, title: "Abo Elaraby", subtitle: "AR-ENG", description: "KOSOM ELGAMAL FILM GAMED NEEK"),
       
        
        samehCard(image: #imageLiteral(resourceName: "se7en.jpg") , rating: 5, title: "SE7EN", subtitle: "ENG", description: "احا كسم الجمال كيفن سبيسي جامد نيك احا الله"),
        
        samehCard(image: #imageLiteral(resourceName: "houseOfCards.jpg") , rating: 5, title: "House of cards", subtitle: "ENG", description: "جامد نيك احا كيفن سبسيي جامد نيك كسم الخولات كيفن سبسي جامد "),
                  
    
    ]
    
    override func viewDidAppear(_ animated: Bool) {
            let cardSlider = CardSliderViewController.with(dataSource: self)
            cardSlider.modalPresentationStyle = .fullScreen //needed for ios 13 only 
            self.present(cardSlider, animated: true, completion: nil)

    }
    
    
    
    
 
    

    override func viewDidLoad() {
        super.viewDidLoad()

    

    }


}










//MARK: Datasource for cards model,
/// Datasource for cards model

struct samehCard:CardSliderItem {
    var image: UIImage
    
    var rating: Int?
    
    var title: String
    
    var subtitle: String?
    
    var description: String?
    
}




extension ViewController: CardSliderDataSource {
 //MARK:CardSliderDataSource
 //CONFIRMITION FOR THE DELEGATES
 func item(for index: Int) -> CardSliderItem {
 return  dataSource[index]
 }
 
 func numberOfItems() -> Int {
     dataSource.count
 }
}
