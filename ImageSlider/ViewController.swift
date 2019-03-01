//
//  ViewController.swift
//  ImageSlider
//
//  Created by Meenal Kewat on 3/1/19.
//  Copyright © 2019 Happykrafts Innovations. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var actressImage = [UIImage(named: "Natalie Portman"),UIImage(named: "Scarlett Johansson"),UIImage(named: "jennifer"),UIImage(named: "Emma Stone"),UIImage(named: "c"),UIImage(named: "Alexandra Daddario"),UIImage(named: "Natalie Portman"),UIImage(named: "Scarlett Johansson"),UIImage(named: "jennifer"),UIImage(named: "Emma Stone"),UIImage(named: "c"),UIImage(named: "Alexandra Daddario"),UIImage(named: "Natalie Portman"),UIImage(named: "Scarlett Johansson"),UIImage(named: "jennifer"),UIImage(named: "Emma Stone"),UIImage(named: "c"),UIImage(named: "Alexandra Daddario"),UIImage(named: "Natalie Portman"),UIImage(named: "Scarlett Johansson"),UIImage(named: "jennifer"),UIImage(named: "Emma Stone"),UIImage(named: "c"),UIImage(named: "Alexandra Daddario")]

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

//writing extension increse the readability
extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actressImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        cell.img.image = actressImage[indexPath.row]
        return cell
        
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout{

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
     //   let size = UIScreen.main.bounds
        let size = collectionView.frame.size
        return CGSize(width: size.width, height: size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
    }

}

