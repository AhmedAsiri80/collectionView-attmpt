//
//  ViewController.swift
//  lab-Collection
//
//  Created by Ahmed Assiri on 19/08/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cillectionview: UICollectionView!
    
    
    let prodectTypeName : [String] = ["Ahmed"," Ali", "Bassam" , "Ahmed", "Bassam", "Ahmed", "Bassam", "Ahmed"," Ali", "Bassam" , "Ahmed", "Bassam", "Ahmed", "Bassam"]
    
    let prodectImage : [String] = ["Ahmed","8", "8" , "8", "8", "8", "8","Ahmed","8", "8" , "8", "8", "8", "8"]
    
    
    
}





extension ViewController: UICollectionViewDelegate ,UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return prodectTypeName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cillectionview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! collectionCell1
        
        cell.image.image = UIImage(named: prodectImage[indexPath.row])
        cell.lable.text = prodectTypeName[indexPath.row]
        
        //كود يجعل الاطار حول الخلية مربع او مدور
        cell.layer.cornerRadius = 15
        // كود يضع اطار حول السل الخلية ولون الاطار
        cell.layer.borderWidth = 2
        cell.layer.borderColor = UIColor.black.cgColor
        
        
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cillectionview.delegate = self
        cillectionview.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width-10)/2

        return CGSize(width: size, height: size)
    }
   
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
}
