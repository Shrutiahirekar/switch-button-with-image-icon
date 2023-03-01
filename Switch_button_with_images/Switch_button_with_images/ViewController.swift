//
//  ViewController.swift
//  Switch_button_with_images
//
//  Created by Skroman iOS Developer on 28/02/23.
//

import UIKit



class ViewController: UIViewController, UICollectionViewDelegate , UICollectionViewDataSource {
   
    
    var device = ["1","2","3"]
    var Image_icon: UIImageView!
    var flag = 0
    @IBOutlet weak var CollectionView_One: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        CollectionView_One.delegate = self
        CollectionView_One.dataSource = self
        CollectionView_One.reloadData()
        
    }
    
}
extension ViewController{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return device.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell_One
        
        
//        cell.Image_icon.image = UIImage(systemName: "lightbulb")
            cell.Image_icon.layer.cornerRadius = 10
            cell.Image_icon.layer.borderColor = UIColor.black.cgColor
            cell.Image_icon.layer.borderWidth = 2
            return cell

    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
          
        
        let click_button = Int(arc4random_uniform(2))
            let change_button = device[click_button]
       
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell_One
          
        
        
        if flag == 0 {
            
          cell.Image_icon.image = UIImage(systemName: "")

            
            view.backgroundColor = UIColor.gray
        flag = 1
              print(flag)
        CollectionView_One.reloadData()
            }
        
        
        else {
            

            cell.Image_icon.image = UIImage(systemName: "light.min")
            

            
            view.backgroundColor = UIColor.blue
            flag = 0
            print(flag)
                CollectionView_One.reloadData()
            }
        }

}


