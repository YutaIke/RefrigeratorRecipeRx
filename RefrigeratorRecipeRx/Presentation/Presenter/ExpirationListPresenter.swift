//
//  ExpirationListPresenter.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/04/29.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

/**
 * UseCaseで記載した宣言をsubscribeし、合成・加工を行いUIの描画用データを生成します。 (プレゼンテーションロジック)
 * Viewからイベントを受け取り、必要があればイベントに応じたUseCaseを実行する
 * UseCaseから受け取ったデータをViewへ渡す
 * Viewがどうなっているか知らない
 * ViewController側のアクションを受け取り、必要があればUseCaseにアクセスする。
 * UseCaseから取得したデータを加工し、ViewController/Viewの変更を通知する
 * (プレゼンテーションロジック)
 *
 * また、基本的に利用できる型はModelで定義したListModels or ListModelのみ
 * (そうすることで、取得するデータ先が変更になっても、PresenterやViewControllerを修正することがなくなっていきます)
 */

import Foundation
import RxSwift
import RxCocoa

protocol ExpirationListPresenterProtocol {
    
}

class ExpirationListPresenter: ExpirationListPresenterProtocol {
    
}
