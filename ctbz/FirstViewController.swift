//
//  FirstViewController.swift
//  ctbz
//
//  Created by Daniel Lucena Pires on 16/02/19.
//  Copyright © 2019 Pessoal. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    let adjacentes = [[2,4],
                      [1,3,5],
                      [2,6],
                      [1,7,5],
                      [2,4,6,8],
                      [3,5,9],
                      [4,8],
                      [5,7,9],
                      [8,6]]
    var vazio = 9;

    func adjacente(numero: Int) -> [Int ] {
        return adjacentes[numero]
    }
    
    func podeMover(dst: Int, src: Int) -> Bool {
        for i in adjacente(numero: dst-1) {
            if (src == i) {return true;}
        }
        return false;
    }
    
    @IBOutlet weak var im1: UIImageView!
    @IBOutlet weak var im2: UIImageView!
    @IBOutlet weak var im3: UIImageView!
    @IBOutlet weak var im4: UIImageView!
    @IBOutlet weak var im5: UIImageView!
    @IBOutlet weak var im6: UIImageView!
    @IBOutlet weak var im7: UIImageView!
    @IBOutlet weak var im8: UIImageView!
    @IBOutlet weak var im9: UIImageView!
    
    @IBAction func embaralhar(_ sender: UIButton) {
        print("embaralhar")
    }
    @IBAction func solucionar(_ sender: UIButton) {
        im1.image = UIImage(named: "q1")
        im2.image = UIImage(named: "q2")
        im3.image = UIImage(named: "q3")
        im4.image = UIImage(named: "q4")
        im5.image = UIImage(named: "q5")
        im6.image = UIImage(named: "q6")
        im7.image = UIImage(named: "q7")
        im8.image = UIImage(named: "q8")
        im9.image = UIImage(named: "q9")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        inicializacao();
    }
    func inicializacao() -> Void {
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.tappedMe))
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.tappedMe))
        let tap3 = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.tappedMe))
        let tap4 = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.tappedMe))
        let tap5 = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.tappedMe))
        let tap6 = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.tappedMe))
        let tap7 = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.tappedMe))
        let tap8 = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.tappedMe))
        let tap9 = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.tappedMe))
        im1.addGestureRecognizer(tap1)
        im1.isUserInteractionEnabled = true
        im2.addGestureRecognizer(tap2)
        im2.isUserInteractionEnabled = true
        im3.addGestureRecognizer(tap3)
        im3.isUserInteractionEnabled = true
        im4.addGestureRecognizer(tap4)
        im4.isUserInteractionEnabled = true
        im5.addGestureRecognizer(tap5)
        im5.isUserInteractionEnabled = true
        im6.addGestureRecognizer(tap6)
        im6.isUserInteractionEnabled = true
        im7.addGestureRecognizer(tap7)
        im7.isUserInteractionEnabled = true
        im8.addGestureRecognizer(tap8)
        im8.isUserInteractionEnabled = true
        im9.addGestureRecognizer(tap9)
        im9.isUserInteractionEnabled = true
    }
    
    @objc func tappedMe(tapGestureRecognizer: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        if(podeMover(dst: vazio, src: tappedImage.tag)){
            let tmp = tappedImage.image
            tappedImage.image = im9.image
            im9.image = tmp
            im9 = tappedImage
            vazio = tappedImage.tag
        }
    }
}

