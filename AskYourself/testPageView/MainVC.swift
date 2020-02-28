//
//  MainVC.swift
//  CardsProject
//
//  Created by Antony Kolesynskyi on 4/14/19.
//  Copyright © 2019 Antony Kolesynskyi. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    

    @IBOutlet var onboardingController: UIView!
    @IBOutlet var skipButton: UIButton!
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var myBackgroundView: UIView!
    @IBOutlet weak var myCardView: UIView!
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
   

    @IBAction func skipIsPressed(_ sender: UIButton) {
        sender.removeFromSuperview()
        onboardingController.removeFromSuperview()
    }
    @IBAction func panRecognizerAction(_ sender: UIPanGestureRecognizer) {
        animation(sender: sender)
    }

    @IBAction func rulesButtonIsPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "nextVC", sender: self)
    }
    
    @IBAction func refreshButton(_ sender: Any) {
        questionNumberLabel.alpha = 0
        questionLabel.alpha = 0
        UIView.animate(withDuration: 0.5, animations: {
            self.swipePosition = 0
            self.questionNumberLabel.alpha = 1
            self.questionLabel.alpha = 1
        })
        questionLabel.text = questionsArray[swipePosition]
    }
    
    
    var swipePosition = 0
    var gradientLayer = CAGradientLayer()
    
    let questionsArray = ["Для начала смахните:)","Расскажи о своем лучшем, по твоему мнению, поступке"
    ,"Каким ты видишь мир через 50 лет?"
    ,"Каков твой самый большой страх?"
    ,"Какой самый странный секрет тебе доводилось хранить?"
    ,"Если бы ты остался последним человеком на Земле, что бы ты сделал в первую очередь?"
    ,"Для тебя важнее быть услышанным или слышать других?"
    ,"Опиши свою жизнь названием песни."
    ,"Ты - спасатель и можешь спасти только одного человека во время апокалипсиса. Кто этот человек?"
    ,"Если бы ты смог полететь в космос, то куда ты бы отправился?"
    ,"Какое самое яркое событие из детства ты помнишь?"
    ,"Как звали девушку/парня, к которому тебе довелось испытать чувство любви впервые?"
    ,"Если бы ты смог вернуться назад в прошлое и изменить одно событие, то какое бы ты изменил?"
    ,"С какой птицей ты бы мог себя ассоциировать и почему?"
    ,"Ты предпочитаешь вернуться за тем, что забыл дома и опоздать или не возвращаться, но успеть?"
    ,"Кто или что повлияло на твои жизненную позицию?"
    ,"Если бы ты был художником и тебе необходимо было бы всю жизнь рисовать лишь одну картину, то что бы ты изобразил на ней?"
    ,"Ты бы спас человека, если бы он был в опасности, зная что он убийца?"
    ,"Что для тебя самое дорогое?"
    ,"Какой проект ты бы хотел воплотить в своей жизни?"
    ,"Что для тебя семья?"
        ,"Каким ты видишь смысл своей жизни?"
        ,"Если бы тебе удалось наладить связь с инопланетной расой, что бы ты узнал у них в первую очередь?"
        ,"Что бы ты первым делом загадал своему ручному Джину?"
        ,"Есть ли жизнь после смерти? Если да, то какая она по твоему мнению?"
        ,"Какая поговорка запала тебе в душу больше всего?"
        ,"Может ли быть много лучших друзей?"
        ,"Какой музыкальный инструмент нравится тебе больше всего?"
        ,"Как часто ты нуждался в чем-либо?"
        ,"Если бы ты смог полететь в космос, то куда ты бы отправился?"
        ,"Пугает ли тебя переезд в другой город?"
        ,"Чай или кофе? Почему?"
        ,"Смог бы ты уделять меньше времени своим детям, но при этом заниматься любимым делом?"
        ,"Что по-твоему ждёт человечество в будущем?"
        ,"Самая чувственная ситуация в твоей жизни?"
        ,"Самый счастиливый человек в твоей жизни?"
        ,"Самолёт или поезд? Почему?"
        ,"Какое животное ты считаешь своим любимым?"
        ,"Назови свой самый любимый фильм"
        ,"Какая из 4-х стихий(вода, земля, огонь, воздух), твоя любимая?"
        ,"Ты бы смог бросить все и уехать в Индию на пол года, если бы это было необходимо?"
        ,"Горы или океан? Почему?"
        ,"Ты боишься темноты или того что она скрывает?"
        ,"Как часто ты видишь сны? Какой запомнился больше всего?"
        ,"У тебя были осознанные сны?"
        ,"Что ты считаешь целью своей жизни?"
        ,"Ты бы был хорошим родителем?"
        ,"В каком возрасте по-твоему, человек начинает по-настоящему взрослеть?"
        ,"Как ты относишься к отдыху в клубах?"
        ,"Бокал вина в день - это плохо или хорошо?"
        ,"Любишь ли ты заниматься спортом?"
        ,"Какая книга понравилась тебе больше всего? Если такой нет, то назови фильм"
        ,"Какой фильм необходимо посмотреть каждому?"
        ,"Важно ли быть в жизни успешным?"
        ,"Что для тебя значит быть богатым?"
        ,"Что нужно успеть сделать в своей жизни? Назови 3 такие вещи"
        ,"Приходилось ли тебе спасать человека от смерти? Если нет, то способен ли ты сделать это в нужное время?"
        ,"Была ли твоя жизнь под настоящей угрозой? Если да, то расскажи об этом"
        ,"Назови работу твоей мечты?"
        ,"Какую страну ты можешь назвать идеальной?"
        ,"Какой период в истории человечества нравится тебе больше всего?"
        ,"Считаешь ли ты мифы правдой?"
        ,"Как ты считаешь, смогут ли люди когда-нибудь прекратить войны полностью?"
        ,"Как ты думаешь, может ли искусственный интеллект захватить планету?"
        ,"Какое имя нравится тебе больше всего?"
        ,"Считаешь ли ты себя счастливым человеком?"
        ,"Ты конфликтный человек?"
        ,"Самое сумасшедшее действие в твоей жизни?"
        ,"Бегал ли ты под дождем? Тебе это нравится?"
        ,"Боишься ли ты высоты? Если нет, то почему?"
        ,"Зима или лето? Почему?"]
    


        override func viewDidLoad() {
            super.viewDidLoad()
            
            questionLabel.text = questionsArray[swipePosition]
            questionNumberLabel.text = "Спроси себя!"

            myCardView.layer.cornerRadius = 8
            myCardView.layer.shadowOffset = CGSize(width: 7, height: 7)
            myCardView.layer.shadowRadius = 5
            myCardView.layer.shadowOpacity = 0.5
            
            myBackgroundView.layer.cornerRadius = 8
            myBackgroundView.layer.shadowOffset = CGSize(width: 7, height: 7)
            myBackgroundView.layer.shadowRadius = 5
            myBackgroundView.layer.shadowOpacity = 0.5
            
            questionLabel.sizeToFit()
            questionNumberLabel.sizeToFit()
        }
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    func animation(sender: UIPanGestureRecognizer) {
        
        let card = sender.view!
        let point = sender.translation(in: view)
        card.center = CGPoint(x: view.center.x + point.x , y: view.center.y + point.y)
        
        if sender.state == UIPanGestureRecognizer.State.ended {
            if card.center.x < 75 || card.center.x > (view.frame.width - 75) {
                //left
                UIView.animate(withDuration: 0.3, animations: {
                    card.center = CGPoint(x: card.center.x + 200, y: card.center.y + 75)
                    card.alpha = 0
                })
                // puting card back on position
                UIView.animate(withDuration: 0.1, animations: {
                    card.center = self.view.center
                    card.alpha = 1
                    self.swipePosition += 1
                })
                print("+1")
                if swipePosition == questionsArray.count {
                    swipePosition = 0
                    questionLabel.text = questionsArray[swipePosition]
                    alertFunc()
                    print("alert")

                }
                questionLabel.text = questionsArray[swipePosition]
                }
            }
            UIView.animate(withDuration: 0.5, animations: {
                card.center = self.view.center
                card.alpha = 1
            })
        }
    
    
    func alertFunc() {
        let ac = UIAlertController(title: "Вы ответили на все вопросы!", message: "Надеемся, что Вы и Ваша команда теперь дружнее!", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        ac.addAction(action)
        present(ac, animated: true)
    }
    
 
    
}

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

