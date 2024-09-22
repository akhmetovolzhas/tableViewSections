//
//  TableViewController.swift
//  tableViewSections
//
//  Created by Olzhas Akhmetov on 22.09.2024.
//

import UIKit

class TableViewController: UITableViewController {
    
    let animals: [[String]] = [
        ["А", "Аист", "Акула", "Антилопа"],
        ["Б", "Барс", "Бобр", "Белка", "Буйвол"],
        ["В", "Волк", "Ворон", "Вомбат"],
        ["Г", "Гусь", "Гепард", "Голубь", "Горилла"],
        ["Д", "Дельфин", "Дятел", "Дикобраз"],
        ["Е", "Енот", "Еж"],
        ["Ж", "Жук", "Жираф"],
        ["З", "Зебра", "Зубр", "Змея"],
        ["И", "Иволга", "Индюк", "Игуана"],
        ["К", "Кот", "Кабан", "Койот", "Корова"],
        ["Л", "Лось", "Лев", "Лама", "Лягушка"],
        ["М", "Моль", "Медведь", "Морж", "Муравей"],
        ["Н", "Носорог", "Норка"],
        ["О", "Осётр", "Овца", "Орёл", "Осьминог"],
        ["П", "Пес", "Панда", "Пингвин", "Пума"],
        ["Р", "Рысь", "Рыба", "Рак", "Росомаха"],
        ["С", "Сова", "Слон", "Собака", "Сурикат"],
        ["Т", "Тигр", "Тукан", "Тюлень"],
        ["У", "Уж", "Утка", "Удав"],
        ["Ф", "Филин", "Фламинго"],
        ["Х", "Хорёк", "Хамелеон"],
        ["Ц", "Цапля"],
        ["Ч", "Чайка", "Черепаха"],
        ["Ш", "Шакал", "Шимпанзе", "Шершень"],
        ["Щ", "Щука"],
        ["Я", "Ястреб", "Ягуар"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return animals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals[section].count - 1 // Первым элементом является буква, его не считаем
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let label = cell.viewWithTag(1001) as! UILabel
        
        label.text = animals[indexPath.section][indexPath.row + 1]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return animals[section].first
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return animals.map { $0.first! }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
