//
//  NewsFeedController.swift
//  PocketDemocracy
//
//  Created by Zach Polsky on 11/7/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class NewsFeedController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var newsArticles: [Article] = []
    
    override func viewWillAppear(_ animated: Bool) {
        newsArticles = GlobalVars.newsArticles
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArticles.count
    }
    
    // Taken from http://stackoverflow.com/questions/31314412/how-to-resize-image-in-swift
    func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
        let size = image.size
        
        let widthRatio  = targetSize.width  / image.size.width
        let heightRatio = targetSize.height / image.size.height
        
        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio, height: size.height * widthRatio)
        }
        
        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)
        
        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell(style: .subtitle, reuseIdentifier: "newsCell")
        let article = newsArticles[indexPath.row]
        
        cell.textLabel!.text = article.title
        cell.detailTextLabel!.text = article.summary
        if (article.cellImage != nil) {
            cell.imageView?.image = resizeImage(image: article.cellImage!, targetSize: CGSize(width: 40, height: 40))
        }
        
//        cell.imageView?.image = resizeImage(image: candy.image!, targetSize: CGSize(width: 40, height: 40))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showArticleDetail", sender: newsArticles[indexPath.row])
    }
    
    private func fetchImage(path: String) -> UIImage? {
        var image: UIImage?
        guard let url = URL(string: path) else { return nil }
        do {
            let data = try Data(contentsOf: url)
            image = UIImage(data: data)!
        } catch {
            print("Image not found")
        }
        return image
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showArticleDetail" {
            let detailedVC = segue.destination as! DetailedArticleView
            detailedVC.selectedArticle = sender as! Article
        }
    }
    

}
