import tint from '../mixins/libs/tint'
import {
  px
  per
  cubicBezier
} from '../../CFX/style/helper'

hd = 2 # 基本单位

# The Color of O2Team Brand
color =
  brand:
    default: '#6190E8'
    light: '#78A4F4'
    dark: '#346FC2'

  # Color
  success: '#13CE66'
  error: '#FF4949'
  warning: '#FFC82C'
  info: '#78A4FA'

  # Color Palette
  black: [
    '#000'
    '#333'
    '#7F7F7F'
    '#B2B2B2'
  ]

  grey: [
    '#333'
    '#666'
    '#999'
    '#CCC'
    '#E5E5E5'
    '#F0F0F0'
    '#F7F7F7'
  ]

  white: '#FFF'

  # Text Color
  text:
    base:
      default: '#333' # 文字的基本色
      inverse: '#FFF' # 反色
    secondary: '#36D57D' # 辅助色
    placeholder: '#C9C9C9'
    disabled: '#CCC'
    title: '#2C405A' # 文章标题
    paragraph: '#3F536E' # 文章段落

  # Link
  link:
    default: '#6190E8'
    hover: '#79A1EB'
    active: '#4F7DE2'
    disabled: '#BFBFBF'

    # 背景色
  bg: {
    default: '#FFF'
    base: '#FAFBFC'
    (
      do =>
        light = '#ECF5FD'
        {
          light
          lighter: tint colorBgLight, '50%'
        }
    )...
    grey: '#F7F7F7'
  }

    # 边框颜色
  border: {
    (
      do =>
        base = '#C5D9E8'
        {
          base
          pplit: tint colorBorderBase, '20%' # 分割线
          light: tint colorBorderBase, '30%'
          lighter: tint colorBorderBase, '50%'
          lightest: tint colorBorderBase, '80%'
        }
    )...
    grey: '#CCC'
  }

  # 图标颜色
  icon:
    base: '#CCC'

# Border Radius
border =
  radius:
    sm: px 2 * hd
    md: px 4 * hd
    lg: px 6 * hd
    circle: per 50

# 透明度
opacity =
  active: 0.6 # Button 等组件点击态额透明度
  disabled: 0.3 # Button 等组件禁用态的透明度

# Font
font =
  size:
    xs: px 10 * hd # 非常用字号，用于标签
    sm: px 12 * hd # 用于辅助信息
    base: px 14 * hd # 常用字号
    lg: px 16 * hd # 常规标题
    xl: px 18 * hd # 大标题
    xxl: px 20 * hd # 用于大号的数字

# Line Height
line =
  height:
    base: 1 # 单行
    en: 1.3 # 英文多行
    zh: 1.5 # 中文多行

spacing =
  # 水平间距
  h:
    sm: px 5 * hd
    md: px 8 * hd
    lg: px 12 * hd
    xl: px 16 * hd

  # 垂直间距
  v:
    xs: px 3 * hd
    sm: px 6 * hd
    md: px 9 * hd
    lg: px 12 * hd
    xl: px 15 * hd

# 图标尺寸
icon =
  size:
    sm: px 18 * hd
    md: px 22 * hd
    lg: px 36 * hd

# z-index
zIndex =
  divider: 100
  steps: 500
  tab: 600
  form: 700
  nav: 800
  searchBar: 800
  indexes: 805
  flotLayout: 810
  drawer: 900
  modal: 1000
  actionSheet: 1010
  picker: 1010
  curtain: 1080
  message: 1090
  toast: 1090

# timing function
timing =
  func: cubicBezier [
    0.36
    0.66
    0.04
    1
  ]

##
# CSS cubic-bezier timing functions
# http://bourbon.io/docs/#timing-functions
##
ease = 
  in:
    quad: cubicbezier [
      0.550
      0.085
      0.680
      0.530
    ]
    cubic: cubicbezier [
      0.550
      0.055
      0.675
      0.190
    ]
    quart: cubicbezier [
      0.895
      0.030
      0.685
      0.220
    ]
    quint: cubicbezier [
      0.755
      0.050
      0.855
      0.060
    ]
    sine: cubicbezier [
      0.470
      0.000
      0.745
      0.715
    ]
    expo: cubicbezier [
      0.950
      0.050
      0.795
      0.035
    ]
    circ: cubicbezier [
      0.600
      0.040
      0.980
      0.335
    ]
    back: cubicbezier [
      0.600
      -0.280
      0.735
      0.045
    ]

  out:
    quad: cubicbezier [
      0.250
      0.460
      0.450
      0.940
    ]
    cubic: cubicbezier [
      0.215
      0.610
      0.355
      1.000
    ]
    quart: cubicbezier [
      0.165
      0.840
      0.440
      1.000
    ]
    quint: cubicbezier [
      0.230
      1.000
      0.320
      1.000
    ]
    sine: cubicbezier [
      0.390
      0.575
      0.565
      1.000
    ]
    expo: cubicbezier [
      0.190
      1.000
      0.220
      1.000
    ]
    circ: cubicbezier [
      0.075
      0.820
      0.165
      1.000
    ]
    back: cubicbezier [
      0.175
      0.885
      0.320
      1.275
    ]

  inOut:
    quad: cubicbezier [
      0.455
      0.030
      0.515
      0.955
    ]
    cubic: cubicbezier [
      0.645
      0.045
      0.355
      1.000
    ]
    quart: cubicbezier [
      0.770
      0.000
      0.175
      1.000
    ]
    quint: cubicbezier [
      0.860
      0.000
      0.070
      1.000
    ]
    sine: cubicbezier [
      0.445
      0.050
      0.550
      0.950
    ]
    expo: cubicbezier [
      1.000
      0.000
      0.000
      1.000
    ]
    circ: cubicbezier [
      0.785
      0.135
      0.150
      0.860
    ]
    back: cubicbezier [
      0.680
      -0.550
      0.265
      1.550
    ]

export {
  color
  border
  opacity
  font
  line
  spacing  
  icon
  zIndex
  timing
  ease
}
