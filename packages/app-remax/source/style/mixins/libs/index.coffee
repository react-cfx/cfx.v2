import mix from './mix'

active = ({
  joinS: js
}) => (colorGrey5) =>
  transition: js [
    bcolorGrey5
    '0.3s'
  ]
  ':active':
    backgroundColor: colorGrey5

# 元素居中定位
absoluteCenter = ({
  joinS: js
  joinP: jp
  per: p
  translate
}) => (
  pos = 'absolute'
) =>
  positon: pos
  top: '50%'
  left: '50%'
  transform: translate [
    p -50
    p -50
  ]

alignhack = ({
  per: p
}) => (
  position = 'before'
  margintop = '1px'
) =>
  "::#{position}":
    content: ''
    display: 'inline-block'
    verticalAlign: 'middle'
    width: 0
    height: p 100
    marginTop: margintop

borderThin = ({
  joinS: js
}) => (
  color 
  style = 'solid'
  directions = [
    'top'
    'bottom'
    'right'
    'left'
  ]
  width = '1px'
) =>
  directions.map (item) =>
    "border-#{item}": js [
      width
      color
      style
    ]

borderThinTop = ({
  px
}) => (
  color
  style = 'solid'
  width = px 1
) =>
  (
    borderThin {
      px
    }
  ) color, style, 'top', width


borderThinLeft = ({
  px
}) => (
  color
  style = 'solid'
  width = px 1
) =>
  (
    borderThin {
      px
    }
  ) color, style, 'left', width

borderThinRight = ({
  px
}) => (
  color
  style = 'solid'
  width = '1px'
) =>
  (
    borderThin {
      px
    } 
  ) color, style, 'right', width

borderThinBottom = ({
  px
}) => (
  color
  style = 'solid'
  width = px 1
) =>
  (
    borderThin {
      px
    }
  ) color, style, 'bottom', width

clearfix = =>
  '::after':
    clear: 'both'
    content: '\" \"'
    display: 'block'

disabled = =>
  color: '#bbb'

displayFlex = =>
  display: 'flex'

flexWrap = (
  value = 'nowrap'
) =>
  flexWrap: value

alignItem = (
  value = 'stretch'
) =>
  alignItems: value
  '-webkitBoxAlign':
    if value is 'flex-start'
    then 'start'
    else if value is 'flex-end'
    then 'end'
    else value

alignContent = (
  value = 'flex-start'
) =>
  alignContent: value

justifyContent = (
  value = 'flex-start'
) =>
  justifyContent: value
  '-webkitBoxPack':
    if value is 'flex-start'
    then 'start'
    else if value is 'flex-end'
    then 'end'
    else if value is 'space-between'
    then 'justify'
    else value

flex = (
  joinS: js
) => (
  fg = 1
  fs = null
  fb = null
) =>
  flex: js [
    fg
    fs
    fb
  ]
  '-webkitBoxFlex': fg

flexOrder = (n) =>
  order: n
  '-webkitBoxOrdinalGroup': n

alignSelf = (value='auto') =>
  alignSelf: value

hairlineCommon = =>
  content: ''
  position: 'absolute'
  transformOrigin: 'center'
  boxSizing: 'border-box'
  pointerEvents: 'none'

hairlineBase = ({
  per: p
  scale
}) => (
  color
  style
) =>
  {
    hairlineCommon()...
    top: p -50
    left: p -50
    right: p -50
    bottom: p -50
    border: js [
      0
      style
      color
    ]
    transform: scale 0.5
  }

hairlineSurround = ({
  px
}) => (
  color
  style = 'solid'
  width = px 1
) =>
  position: 'relative'
  '::after': {
    hairlineBase(color, style)...
    borderWidth: width
  }

hairlineTop = ({
  px
}) => (
  color
  style = 'solid'
  width = px 1
) =>
  position: 'relative'
  '::after': {
    hairlineBase(color, style)...
    borderTopWidth: width
  }

hairlineBottom = ({
  px
}) => (
  color
  style = 'solid'
  width = px 1
) =>
  position: 'relative'

  '::after': {
    hairlineBase(color, style)...
    borderBottomWidth: width
  }

hairlineLeft = ({
  px
}) => (
  color
  style = 'solid'
  width = px 1
) =>
  position: 'relative'

  '::after': {
    hairlineBase(color, style)...
    borderLeftWidth: width
  }

hairlineRight = ({
  px
}) => (
  color
  style = 'solid'
  width = px 1
) =>
  position: 'relative'

  '::after': {
    hairlineBase(color, style)...
    borderRightWidth: width
  }

hairlineTopBottom = ({
  px
}) => (
  color
  style = 'solid'
  width = px 1
) =>
  position: 'relative'

  '::after': {
    hairlineBase(color, style)...
    borderTopWidth: width
    borderBottomWidth: width
  }

hairlineBottomRelative = ({
  px
  joinS: js
  scaleY
}) => (
  color
  style = 'solid'
  width = px 1
  left = 0
) => 
  position: 'relative'
  '::after': {
    hairlineCommon()...
    top: 'auto'
    left: left
    right: 0
    bottom: 0
    transform: scaleY 0.5
    borderBottom: js [
      width 
      style 
      color
    ]
  }

hairlineTopRelative = ({
  px
  joinS: js
  scaleY
}) => (
  color
  style = 'solid'
  width = px 1
  left = 0
) => 
  position: 'relative'
  '::after': {
    hairlineCommon()...
    top: 'auto'
    left: left
    right: 0
    bottom: 0
    transform: scaleY 0.5
    borderTop: js [
      width 
      style 
      color
    ]
  }

hairlineLeftRelative = ({
  px
  joinS: js
  scaleY
}) => (
  color
  style = 'solid'
  width = px 1
  left = 0
) => 
  position: 'relative'
  '::after': {
    hairlineCommon()...
    top: 'auto'
    left: left
    right: 0
    bottom: 0
    transform: scaleY 0.5
    borderLeft: js [
      width 
      style 
      color
    ]
  }

hairlineRightRelative = ({
  px
  joinS: js
  scaleY
}) => (
  color
  style = 'solid'
  width = px 1
  left = 0
) => 
  position: 'relative'
  '::after': {
    hairlineCommon()...
    top: 'auto'
    left: left
    right: 0
    bottom: 0
    transform: scaleY 0.5
    borderRight: js [
      width 
      style 
      color
    ]
  }

line = (num = 1) =>
  if num is 1
  then 
    overflow: 'hidden'
    textOverflow: 'ellipsis'
    whiteSpace: 'nowrap'
  else
    overflow: 'hidden'
    textOverflow: 'ellipsis'
    display: '-webkit-box'
    '-webkitLineClamp': num
    '-webkitBoxOrient': 'vertical'

overlay = ({
  per: p
  rgba
}) => (
  color = '#000'
  alpha = 0.3
) =>
  top: 0
  left: 0
  width: p 100
  height: p 100
  position: 'absolute'
  backgroundColor: rgba color, alpha

placeholder = (
  color
  colorGrey3
) =>
  atRoot: {
    color
  }
  placeholder: {
    color
  }

  '::placeholder': {
    color
  }

shade = (
  color
  percent
) =>
  mix(
    '#000'
    color
    percent
  )
  .hex()

tint = (
  color
  percent
) =>
  mix(
    '#FFF'
    color
    percent
  )
  .hex()

export {
  active
  absoluteCenter
  alignhack

  borderThin
  borderThinTop
  borderThinLeft
  borderThinRight
  borderThinBottom

  clearfix
  disabled
  displayFlex
  flexWrap
  alignItem
  alignContent
  justifyContent

  flex
  flexOrder

  alignSelf

  hairlineCommon
  hairlineBase
  hairlineSurround
  hairlineTop
  hairlineBottom
  hairlineLeft
  hairlineRight
  hairlineTopBottom
  hairlineBottomRelative
  hairlineTopRelative
  hairlineLeftRelative
  hairlineRightRelative

  line
  overlay
  placeholder

  mix
  shade
  tint
}
