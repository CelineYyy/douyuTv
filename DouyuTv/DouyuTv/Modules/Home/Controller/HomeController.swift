// +----------------------------------------------------------------------
// | 广西西途比网络科技有限公司 www.c2b666.com
// +----------------------------------------------------------------------
// | 功能描述: HomeController.swift
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

class HomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }

    private func initView(){
        buildNav()
    }

}

extension HomeController{
    
    // 构建导航栏
    private func buildNav(){
        // 左侧LOGO按钮
        let btnLogo = UIButton()
        btnLogo.setImage(UIImage(named: "logo"), for: .normal)
        btnLogo.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btnLogo)
        // 右侧按钮
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(customView: buildNavRightBtn(normalImage: "image_my_history", selectedImage: "Image_my_history_click")),
            UIBarButtonItem(customView: buildNavRightBtn(normalImage: "btn_search", selectedImage: "btn_search_clicked")),
            UIBarButtonItem(customView: buildNavRightBtn(normalImage: "Image_scan", selectedImage: "Image_scan_click"))
        ]
    }
    
    private func buildNavRightBtn(normalImage:String,selectedImage:String)->UIButton{
        let btn = UIButton()
        btn.setImage(UIImage(named: normalImage), for: .normal)
        btn.setImage(UIImage(named: selectedImage), for: .selected)
        btn.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: 40, height: 40))
        return btn
    }
    
}
