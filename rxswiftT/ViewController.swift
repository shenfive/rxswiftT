//
//  ViewController.swift
//  rxswiftT
//
//  Created by 申潤五 on 2023/9/21.
//

import UIKit
import RxSwift
import RxCocoa

struct Product{
    let imageName:String
    let title:String
}

struct ProductViewModel{
    var item = PublishSubject<[Product]>()
    
    func fetchItems(){
        let products = [
            Product(imageName: "Prouct1", title: "第一個物件"),
            Product(imageName: "Prouct2", title: "第二個物件"),
            Product(imageName: "Prouct3", title: "第三個物件"),
            Product(imageName: "Prouct4", title: "第四個物件"),
            Product(imageName: "Prouct5", title: "第五個物件")
        ]
        item.onNext(products)
        item.onCompleted()
    }
}


class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    private var viewModel = ProductViewModel()
    
    private var bag = DisposeBag()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

