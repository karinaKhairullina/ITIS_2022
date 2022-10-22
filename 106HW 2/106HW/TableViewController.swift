//
//  TableViewController.swift
//  106HW
//
//  Created by Карина Хайрулина on 21.10.2022.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

   
    private let tableView: UITableView = .init(frame: .zero, style: .insetGrouped)
    
    private var authorsList: [Authors] = getAuthors()
    private var serialsList: [Serials] = getSerials()
    
    override func viewDidLoad() {
            super.viewDidLoad()
            setup()
        }
    
    private func setup(){
        tableView.backgroundColor = .white
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
        
        
        tableView.register(
            TableViewCell.self, forCellReuseIdentifier:
            Indentifire.author.rawValue
        )
        
        tableView.register(
            TableViewCell.self, forCellReuseIdentifier:
            Indentifire.serial.rawValue
        )
        
        tableView.dataSource = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? authorsList.count : serialsList.count
    }

    enum Indentifire: String {
        case author
        case serial
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
        
        let authors = authorsList[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(
                    withIdentifier: Indentifire.author.rawValue,
                    for: indexPath) as? TableViewCell
        else {
                    fatalError()
        }
            
        var configuration = UIListContentConfiguration.cell()
        configuration.text = " \(authors.name) \(authors.surname)"
        configuration.image = UIImage(named: authors.portetImageView)
        configuration.imageProperties.maximumSize = CGSize(width: 100, height: 100)
        configuration.textProperties.font = UIFont.systemFont(ofSize: 25)
            
            if (authors.name == "Bryan" || authors.name == "Álex" || authors.name == "Laurie") {
                configuration.secondaryText = "Best producer of my opinion!!"
                configuration.secondaryTextProperties.font = .systemFont(ofSize: 15)
    }
            cell.contentConfiguration = configuration
            return cell
    }
        
        let serials = serialsList[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: Indentifire.serial.rawValue,
                for: indexPath) as? TableViewCell
        else {
                fatalError()
            }
        
        cell.set(serials: serials)
        return cell
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
         indexPath.section == 0 ? false : true
     }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
             if section == 0 {
                 return "Authors"
             } else{
                 return "Serials"
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.section == 1) {
                     tableView.deselectRow(at: indexPath, animated: true)
                     serialsList[indexPath.row].infoList()
                 }
        }
}




