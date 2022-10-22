//
//  TableViewCell.swift
//  106HW
//
//  Created by Карина Хайрулина on 21.10.2022.
//

import UIKit


class TableViewCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setup()
    }
    
    private let nameLabel: UILabel = .init()
    private let raitingLabel: UILabel = .init()
    private let actorLabel: UILabel = .init()
    private let dateLabel: UILabel = .init()

    
    func set(serials: Serials) {
        nameLabel.text = serials.name
        raitingLabel.text = "Raiting: \(serials.raiting)"
        actorLabel.text = "Actor: \(serials.actor)"
        dateLabel.text = "Relise: \(serials.date)"
    }
    
    private func setup() {
        nameLabel.font = .boldSystemFont(ofSize: 25)        
        raitingLabel.font = .monospacedDigitSystemFont(ofSize: 20, weight: .regular)
        actorLabel.font = .monospacedDigitSystemFont(ofSize: 20, weight: .regular)
        dateLabel.font = .monospacedDigitSystemFont(ofSize: 20, weight: .regular)
       
        let stackView = UIStackView(arrangedSubviews: [
            nameLabel, raitingLabel, actorLabel, dateLabel
        ])
        stackView.axis = .vertical
        
        contentView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
