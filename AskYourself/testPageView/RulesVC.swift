//
//  RulesVC.swift
//  CardsProject
//
//  Created by Antony Kolesynskyi on 4/15/19.
//  Copyright © 2019 Antony Kolesynskyi. All rights reserved.
//

import UIKit

class RulesVC: UIViewController {
    
    @IBOutlet weak var rulesLabel: UILabel!
    @IBOutlet weak var backgroundView: UIView!
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    let rulesText = "Суть игры очень проста - перед Вами вопрос, на который вы должны ответить. После ответа свайпом вправо или влево можно перейти к следующему вопросу и передать телефон следующему игроку. Ответьте на все вопросы, это поможет вашей беседе заиграть новыми красками. Отвечать на вопросы нужно честно! Они не слишком сложные, но уж точно заставят Вас подумать. Это поможет быстро наладить коннект между людьми:) Переворачивайте карточки по очереди и не забывайте быть открытыми для ваших собеседников."
    
    override func viewDidLoad() {
        super.viewDidLoad()

        backgroundView.layer.cornerRadius = 8
        backgroundView.layer.shadowOffset = CGSize(width: 7, height: 7)
        backgroundView.layer.shadowRadius = 5
        backgroundView.layer.shadowOpacity = 0.5
        rulesLabel.text = rulesText
    }

}
