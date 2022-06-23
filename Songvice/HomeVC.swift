//
//  ViewController.swift
//  Songvice
//
//  Created by Ömer Faruk Kılıçaslan on 23.06.2022.
//

import UIKit

class HomeVC: UIViewController {
    
    var tableView = UITableView()
    var musics: [Music] = []
    
       
    struct Cells {
        static let musicCell = "MusicCell"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Omerfuk's Musics"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        musics = fetchData()
        
        configureTableView()
        
        
    }
    
    
    func configureTableView(){
        //add tableview to view
        view.addSubview(tableView)
        //set delegates
        setTableViewDelegates()
        //set tableview row height
        setTableViewRowHeight()
        //register tableview
        tableView.register(MusicCellTableViewCell.self, forCellReuseIdentifier: Cells.musicCell)
        //give constraints to tableview
        tableView.pin(to: view)
        
    }
    
    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setTableViewRowHeight(){
        tableView.rowHeight = 100
    }
    


}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.musicCell) as! MusicCellTableViewCell
        let music = musics[indexPath.row]
        cell.set(music: music)
        return cell
    }
}


extension HomeVC{
    
    func fetchData() -> [Music] {
        
        let music1 = Music(imgName: Images.img1, musicTitle: "Manzaralı günler")
        let music2 = Music(imgName: Images.img2, musicTitle: "Manzaralı güller")
        let music3 = Music(imgName: Images.img3, musicTitle: "Manzaralı zamanlar")
        let music4 = Music(imgName: Images.img4, musicTitle: "Manzaralı hayatlar")
        let music5 = Music(imgName: Images.img5, musicTitle: "Manzaralı günler")
        
        return [music1,music2,music3,music4,music5]
    }
}
