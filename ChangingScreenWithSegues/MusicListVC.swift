//
//  MusicListVC.swift
//  ChangingScreenWithSegues
//
//  Created by NguyenHung on 12/30/16.
//  Copyright © 2016 NguyenHung. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
        //Thay mau background
    }

    @IBAction func backBtnPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
        // An back de quay lai man hinh 1
    }
    
    @IBAction func load3rdScreenPressed(_ sender: AnyObject) {
        let songTitle = "Quit Playing Games With My Heart"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
        //an vao load 3rdsCREEN de hien man hinh 3 va in dong chu Quit Playing...
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender  as? String {
                destination.selectedSong = song
            }
            
        }
    }

}
