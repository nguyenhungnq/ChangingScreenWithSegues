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
    }

    @IBAction func backBtnPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func load3rdScreenPressed(_ sender: AnyObject) {
        let songTitle = "Quit Playing Games With My Heart"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender  as? String {
                destination.selectedSong = song
            }
            
        }
    }

}
