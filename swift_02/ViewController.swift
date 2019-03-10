//
//  ViewController.swift
//  swift_02
//
//  Created by Ｗill on 2019/3/10.
//  Copyright © 2019 NTW. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCollectionViewCell", for: indexPath) as! myCollectionViewCell
        
        cell.title.text = "123"
        
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    

    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView.delegate = self;
        collectionView.dataSource = self;
        
//        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "myCollectionViewCell")
        
        collectionView.register(UINib.init(nibName: "myCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCollectionViewCell")

        
        let layout = UICollectionViewFlowLayout.init()
        layout.itemSize = CGSize.init(width: 70, height: 50)
        layout.minimumInteritemSpacing = 10
        layout.sectionInset = UIEdgeInsets.init(top: 0, left: 30, bottom: 0, right: 30)
        
        collectionView.collectionViewLayout = layout
    }


}

