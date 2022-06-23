//
//  MusicCellTableViewCell.swift
//  Songvice
//
//  Created by Ömer Faruk Kılıçaslan on 23.06.2022.
//

import UIKit

class MusicCellTableViewCell: UITableViewCell {
    
    var musicImageView  = UIImageView()
    var musicTitle      = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(musicImageView)
        addSubview(musicTitle)
        
        configureMusicImageView()
        configureMusicTitle()
        
        setMusicImageConstraints()
        setMusicTitleConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(music: Music) {
        musicImageView.image = music.imgName
        musicTitle.text = music.musicTitle
    }
    
    
    func configureMusicImageView() {
        
        musicImageView.layer.cornerRadius = musicImageView.frame.height / 3
        musicImageView.clipsToBounds = true
    }
    
    func configureMusicTitle() {
        
        musicTitle.numberOfLines = 0
        musicTitle.adjustsFontSizeToFitWidth = true
    }
    
    func setMusicImageConstraints() {
        
        musicImageView.translatesAutoresizingMaskIntoConstraints = false
        
        musicImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        musicImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        musicImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        musicImageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
    }
    
    
    func setMusicTitleConstraints(){
        
        musicTitle.translatesAutoresizingMaskIntoConstraints = false
        musicTitle.leadingAnchor.constraint(equalTo: musicImageView.trailingAnchor, constant: 12).isActive = true
        musicTitle.heightAnchor.constraint(equalToConstant: 40).isActive = true
        musicTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
}
