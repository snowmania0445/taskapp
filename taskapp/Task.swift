//
//  Task.swift
//  taskapp
//
//  Created by 春原卓也 on 2018/04/06.
//  Copyright © 2018年 takuya.sunohara. All rights reserved.
//

import RealmSwift

class Task: Object {
    //管理用ID。プライマリーキー。データベースでそれぞれのデータを一意に識別するためのID
    @objc dynamic var id = 0
    
    //タイトル
    @objc dynamic var title = ""
    
    //内容
    @objc dynamic var contents = ""
    
    //日時
    @objc dynamic var date = Date()
    
    //カテゴリー
    @objc dynamic var category = ""
    
    /**
     idをプライマリーキーとして設定
    */
    override static func primaryKey() -> String? {
        return "id"
    }
    
    //@objc dynamic修飾子は今回使用するデータベースのライブラリであるRealmがKVO(Key Value Observing)という仕組みを利用しているため必要になります。今回は、KVOとはプロパティの変更を監視するための仕組みだということを理解していれば十分です。
}
