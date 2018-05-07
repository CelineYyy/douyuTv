// +----------------------------------------------------------------------
// | 广西西途比网络科技有限公司 www.c2b666.com
// +----------------------------------------------------------------------
// | 功能描述: MainController.swift
// +----------------------------------------------------------------------
// | 时　　间: 2018/5/8
// +----------------------------------------------------------------------
// | 代码创建: 朱荻 <292018748@qq.com>
// +----------------------------------------------------------------------
// | 版本信息: V1.0.0
// +----------------------------------------------------------------------
// | 代码修改:（修改人 - 修改时间）
// +----------------------------------------------------------------------

import UIKit

class MainController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVc(storyName: "Home")
        addChildVc(storyName: "Live")
        addChildVc(storyName: "Follow")
        addChildVc(storyName: "Profile")
    }

    private func addChildVc(storyName:String){
        let childVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        addChildViewController(childVc)
    }

}
