//
//  Question.swift
//  HomeWorkApp
//
//  Created by Rakshanda Alaskarova on 29.01.24.
//

import Foundation

class Question {
    static var questions: [Question] = []
    let textQuestion: String
    let correctAnswer: String
    var failAnswers: [String] = []
    var answers: [String] {
        var allAnswers = failAnswers
        allAnswers.append(correctAnswer)
        return allAnswers.shuffled()
    }
    var complexity: Complexity
    
    
    enum Complexity {
        case easy, average, difficult
    }
    
    init(textQuestion: String, correctAnswer: String, failAnswers: [String], complexity: Complexity) {
        self.textQuestion = textQuestion
        self.correctAnswer = correctAnswer
        self.failAnswers = failAnswers
        self.complexity = complexity
        Question.questions.append(self)
    }
    
    static func getRandomQuestions(complexity: Question.Complexity) -> [Question] {
        let filteredQuestion = questions.filter{ $0.complexity == complexity }
        let randomQuestion = Array(filteredQuestion.shuffled().prefix(5))
        return randomQuestion
    }
}

let easyQuestions: [Question] = [
    Question(textQuestion: "Сколько пальцев на руке?", correctAnswer: "5", failAnswers: ["4", "6", "8"], complexity: .easy),
    Question(textQuestion: "Как зовут нашу планету?", correctAnswer: "Земля", failAnswers: ["Марс", "Венера", "Юпитер"], complexity: .easy),
    Question(textQuestion: "Какой цвет у неба?", correctAnswer: "Голубой", failAnswers: ["Красный", "Желтый", "Черный"], complexity: .easy),
    Question(textQuestion: "Как называется столица России?", correctAnswer: "Москва", failAnswers: ["Санкт-Петербург", "Киев", "Владивосток"], complexity: .easy),
    Question(textQuestion: "Сколько месяцев в году?", correctAnswer: "12", failAnswers: ["10", "11", "14"], complexity: .easy),
    Question(textQuestion: "Как зовут нашу галактику?", correctAnswer: "Млечный Путь", failAnswers: ["Андромеда", "Треугольник", "Сатурн"], complexity: .easy),
    Question(textQuestion: "Какой год был провозглашен Международным годом света?", correctAnswer: "2015", failAnswers: ["2010", "2020", "2025"], complexity: .easy),
    Question(textQuestion: "Какое животное символизирует США?", correctAnswer: "Белый орел", failAnswers: ["Бурый медведь", "Золотая рыбка", "Красный кенгуру"], complexity: .easy),
    Question(textQuestion: "Какая самая длинная река в мире?", correctAnswer: "Амазонка", failAnswers: ["Нил", "Миссисипи", "Волга"], complexity: .easy)
]

let averageQuestions: [Question] = [
    Question(textQuestion: "Какой год был провозглашен Международным годом света?", correctAnswer: "2015", failAnswers: ["2010", "2020", "2025"], complexity: .average),
    Question(textQuestion: "Какое животное символизирует США?", correctAnswer: "Белый орел", failAnswers: ["Бурый медведь", "Золотая рыбка", "Красный кенгуру"], complexity: .average),
    Question(textQuestion: "Как называется столица России?", correctAnswer: "Москва", failAnswers: ["Санкт-Петербург", "Киев", "Владивосток"], complexity: .average),
    Question(textQuestion: "Сколько месяцев в году?", correctAnswer: "12", failAnswers: ["10", "11", "14"], complexity: .average),
    Question(textQuestion: "Как называется наука, изучающая звезды?", correctAnswer: "Астрономия", failAnswers: ["Биология", "Химия", "Физика"], complexity: .average),
    Question(textQuestion: "Сколько континентов на Земле?", correctAnswer: "7", failAnswers: ["5", "6", "8"], complexity: .average),
    Question(textQuestion: "Какой химический элемент обозначается как 'O'?", correctAnswer: "Кислород", failAnswers: ["Водород", "Азот", "Углерод"], complexity: .average),
    Question(textQuestion: "В каком году произошло первое космическое полет человека?", correctAnswer: "1961", failAnswers: ["1955", "1970", "1985"], complexity: .average),
    Question(textQuestion: "Кто был первым президентом США?", correctAnswer: "Джордж Вашингтон", failAnswers: ["Джон Адамс", "Томас Джефферсон", "Авраам Линкольн"], complexity: .average)
]

let difficultQuestions: [Question] = [
    Question(textQuestion: "Кто написал 'Война и мир'?", correctAnswer: "Лев Толстой", failAnswers: ["Федор Достоевский", "Антон Чехов", "Иван Тургенев"], complexity: .difficult),
    Question(textQuestion: "Как называется самая большая пустыня в мире?", correctAnswer: "Сахара", failAnswers: ["Аравийская", "Гоби", "Антарктида"], complexity: .difficult),
    Question(textQuestion: "Кто изобрел телефон?", correctAnswer: "Александр Грэм Белл", failAnswers: ["Томас Эдисон", "Никола Тесла", "Гуглиельмо Маркони"], complexity: .difficult),
    Question(textQuestion: "Какой газ является самым распространенным в атмосфере Земли?", correctAnswer: "Азот", failAnswers: ["Кислород", "Углекислый газ", "Неон"], complexity: .difficult),
    Question(textQuestion: "Какой художник написал 'Сотворение Адама' на потолке Сикстинской капеллы?", correctAnswer: "Микеланджело", failAnswers: ["Леонардо да Винчи", "Рафаэль", "Винсент ван Гог"], complexity: .difficult),
    Question(textQuestion: "Какой химический элемент обозначается как 'Fe'?", correctAnswer: "Железо", failAnswers: ["Золото", "Серебро", "Медь"], complexity: .difficult),
    Question(textQuestion: "Как называется язык программирования, созданный компанией Apple?", correctAnswer: "Swift", failAnswers: ["Java", "Python", "C++"], complexity: .difficult)
]
