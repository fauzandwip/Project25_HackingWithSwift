//
//  ViewController.swift
//  Project25
//
//  Created by Fauzan Dwi Prasetyo on 14/05/23.
//

import UIKit

class ViewController: UICollectionViewController {
    
    var items = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Selfie Share"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(importPicture))
    }

    @objc func importPicture() {
        
    }

}


// MARK: - UICollectionViewController Method

extension ViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageViewCell", for: indexPath)
        
        return cell
    }
    
    
}
