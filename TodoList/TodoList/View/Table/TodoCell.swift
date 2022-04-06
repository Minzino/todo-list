//
//  TodoCell.swift
//  TodoList
//
//  Created by juntaek.oh on 2022/04/05.
//

import UIKit

class TodoCell: UITableViewCell{
    private var backView: UIView!
    private var title: UILabel!
    private var contents: UILabel!
    private var author: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setComponents()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setComponents()
    }
    
    func setLabelText(title: String, contents: String){
        self.title.text = title
        self.contents.text = contents
    }
}

private extension TodoCell{
    func setComponents() {
        configureBackView()
        configureTitleLabel()
        configureContentLabel()
        configureAuthor()
        configureAutoLayout()
    }
    
    func configureBackView() {
        backView = UIView()
        backView.backgroundColor = .white
        backView.layer.cornerRadius = 10
        
        self.contentView.addSubview(backView)
    }
    

    func configureTitleLabel(){
        title = UILabel()
        title.textColor = .black
        title.font = UIFont.boldSystemFont(ofSize: 20)
        
        self.backView.addSubview(title)
    }
    
    func configureContentLabel(){
        contents = UILabel()
        contents.numberOfLines = 3
        contents.textColor = .black
        contents.font = UIFont.systemFont(ofSize: 17)
        
        self.backView.addSubview(contents)
    }
    
    func configureAuthor(){
        author = UILabel()
        author.text = "author by iOS"
        author.textColor = .systemGray
        author.font = UIFont.systemFont(ofSize: 12)
        
        self.backView.addSubview(author)
    }
    
    func configureAutoLayout(){
        backView.translatesAutoresizingMaskIntoConstraints = false
        backView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 5).isActive = true
        backView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -5).isActive = true
        backView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 5).isActive = true
        backView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -5).isActive = true
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.topAnchor.constraint(equalTo: self.backView.topAnchor, constant: 10).isActive = true
        title.leadingAnchor.constraint(equalTo: self.backView.leadingAnchor, constant: 15).isActive = true
        title.widthAnchor.constraint(equalTo: self.backView.widthAnchor, constant: -30).isActive = true
        title.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        contents.translatesAutoresizingMaskIntoConstraints = false
        contents.topAnchor.constraint(equalTo: self.title.bottomAnchor, constant: 15).isActive = true
        contents.bottomAnchor.constraint(equalTo: self.author.topAnchor, constant: -15).isActive = true
        contents.leadingAnchor.constraint(equalTo: self.backView.leadingAnchor, constant: 15).isActive = true
        contents.widthAnchor.constraint(equalTo: self.backView.widthAnchor, constant: -30).isActive = true
        
        author.translatesAutoresizingMaskIntoConstraints = false
        author.bottomAnchor.constraint(equalTo: self.backView.bottomAnchor, constant: -5).isActive = true
        author.leadingAnchor.constraint(equalTo: self.backView.leadingAnchor, constant: 15).isActive = true
        author.widthAnchor.constraint(equalTo: self.backView.widthAnchor, constant: -30).isActive = true
        author.heightAnchor.constraint(equalToConstant: 15).isActive = true
    }
}

