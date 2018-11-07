//
//  propercollectionview.swift
//  collection
//
//  Created by Sriram Prasad on 07/11/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//

import UIKit
class CollectionVC: UICollectionViewController,UICollectionViewDelegateFlowLayout {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(CollectionCell.self, forCellWithReuseIdentifier: "cell")
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!CollectionCell
        cell.nameLabel.text = "habc,ashkvcsavhc"
        
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
return CGSize(width: collectionView.frame.width, height: 100)
        
    }

}






class CollectionCell: UICollectionViewCell {
    
    let nameLabel :UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
//        backgroundColor = .red
        addSubview(nameLabel)
        setupViews()

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
  func  setupViews(){
    
    let constraints = [
    nameLabel.topAnchor.constraint(equalTo: topAnchor),
    nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
    nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
    nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor)
]
    
    NSLayoutConstraint.activate(constraints)
    }
}
