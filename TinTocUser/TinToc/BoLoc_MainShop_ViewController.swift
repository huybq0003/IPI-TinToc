//
//  BoLoc_MainShop_ViewController.swift
//  TinToc
//
//  Created by Shin Hyuk on 6/28/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit

class BoLoc_MainShop_ViewController: BaseViewController {
    var isPresented = true
    
    @IBOutlet weak var colBoLoc: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }
    
    @IBAction func abtnCancel(_ sender: Any) {
        dismiss()
        
    }
    
    func dismiss() {
        
        isPresented = false // Set this flag to NO before dismissing controller, so that correct orientation will be chosen for the bottom controller
        self.presentingViewController!.dismiss(animated: true, completion: nil);
    }
    
    
}

extension BoLoc_MainShop_ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = colBoLoc.dequeueReusableCell(withReuseIdentifier: "BoLocCellHeader", for: indexPath)
            
            return cell
        }else{
            let cell = colBoLoc.dequeueReusableCell(withReuseIdentifier: "BoLocCell", for: indexPath)
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize (width: colBoLoc.frame.size.width, height: colBoLoc.frame.size.height/6)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
}

class BoLocCellHeader:UICollectionViewCell {
    
    
}

class BoLocCell:UICollectionViewCell {
    @IBOutlet weak var txtSTT: UILabel!
    @IBOutlet weak var txtCode: UILabel!
    @IBOutlet weak var txtDate: UILabel!
    @IBOutlet weak var txtTimeTo: UILabel!
    @IBOutlet weak var txtTimeOut: UILabel!
    @IBOutlet weak var txtStatus: UILabel!
    @IBAction func abtnDetail(_ sender: Any) {
        
    }
    
    
}
