//
//  NewsDetailVC.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 18/05/2023.
//

import UIKit

class NewsDetailVC: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var headerImage:UIImageView!
    @IBOutlet weak var newsHeadingLabel:UILabel!
    @IBOutlet weak var newsTimeLabel:UILabel!
    @IBOutlet weak var newsDetailTextView:UITextView!
    
    // MARK: - Properties
    var presenter: NewsDetailPresentation?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBAction
    @IBAction func backButtonPressed(sender:UIButton) {
        
        presenter?.dismissNewsDetailView()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension NewsDetailVC: NewsDetailView {
   
    func populateUIWithData(_ article:Article) {
        self.newsTimeLabel.text = DateHelper.formatPublished(article.publishedAt ?? "")
        self.newsHeadingLabel.text = article.title
        headerImage.kf.indicatorType = .activity
        print(article.urlToImage ?? "")
        headerImage.kf.setImage(
            with: URL(string: article.urlToImage ?? "")
        )
    }
}
