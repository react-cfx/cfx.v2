import logoImg from '../../assets/images/logo/logo_taro.png'
import iconBasic from '../../assets/images/pages/index/icon-list-basic.png'
import iconView from '../../assets/images/pages/index/icon-list-view.png'
import iconAction from '../../assets/images/pages/index/icon-list-action.png'
import iconForm from '../../assets/images/pages/index/icon-list-form.png'
import iconLayout from '../../assets/images/pages/index/icon-list-layout.png'
import iconNavigation from '../../assets/images/pages/index/icon-list-navigation.png'
import iconHOC from '../../assets/images/pages/index/icon-list-hoc.png'

export {
  logoImg
}
export default [
    id: 'Basic'
    title: '基础'
    content: '包含颜色、文本、图标等'
    icon: iconBasic
  ,
    id: 'View'
    title: '视图'
    content: '包含通告栏、标签、徽标等'
    icon: iconView
  ,
    id: 'Action'
    title: '操作反馈'
    content: '包含对话框、进度条、动作面板等'
    icon: iconAction
  ,
    id: 'Form'
    title: '表单'
    content: '包含输入框、单选框、复选框等'
    icon: iconForm
  ,
    id: 'Layout'
    title: '布局'
    content: '包含列表、浮层、卡片等'
    icon: iconLayout
  ,
    id: 'Navigation'
    title: '导航'
    content: '包含标签栏、导航栏、分段器等'
    icon: iconNavigation
  ,
    id: 'Advanced'
    title: '高阶组件'
    content: '包含日历等'
    icon: iconHOC
]
