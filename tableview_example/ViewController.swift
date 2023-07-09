//
//  ViewController.swift
//  tableview_example
//
//  Created by Batuhan Berk Ertekin on 8.07.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    var movies : [Movies] = [Movies]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
       let hizliveofeli = Movies(movieName: "Hızlı ve Öfkeli 10 ",movieDate: "2023",movieImage: "hizliveofkeli")
        let oppenHeimer = Movies(movieName: "Oppenheimer" , movieDate: "2023",movieImage: "oppen")
        let  godzilla = Movies(movieName: "Godzilla",movieDate: "1954",movieImage: "godzillaaa")
        let snow = Movies(movieName: "Snowpiercer",movieDate: "2013",movieImage: "snow")
        let extraction = Movies(movieName: "Extraction" , movieDate: "2020",movieImage: "extraction")
        
        
        movies.append(hizliveofeli)
        movies.append(oppenHeimer)
        movies.append(godzilla)
        movies.append(snow)
        movies.append(extraction)
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    


}

extension ViewController : UITableViewDelegate , UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        
        
        
        let  cell = tableView.dequeueReusableCell(withIdentifier: "movieCell",for: indexPath) as! TableViewCell
        
       let movies = movies[indexPath.row]
        
        cell.nameText.text = movies.movieName
        cell.directorText.text = "Yayınlanma Yılı : \(movies.movieDate!) "
        cell.pictureView.image = UIImage(named: movies.movieImage!)
         
        
        
        
        
        return cell
        
        
        
     
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        print("Tıklanıldı : \(movies[indexPath.row].movieName ?? " no data " )")
    }
    
    
    
    
    
    
    
    
}



