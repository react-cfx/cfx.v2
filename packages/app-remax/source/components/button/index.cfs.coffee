import getStylVariables from '../../style/variables/default'

nopx = (pxStr) =>
  arr = pxStr.split ''
  Number.parseInt(
    arr[0..(arr.length - 2)]
    .join ''
  )

pxNOpx = (pxStr, act, {px, nopx}) =>
  px act nopx pxStr

export default ({
  cfs: {
    px
    vh
    per: p
    joinS: js
    rgba
    calc
    color: c
  }
}) =>

  { 
    spacing
    font
    color
    border
    line
    opacity
  } = getStylVariables {
    px
    per: p
  }

  at = do =>
    brand = color.brand.default
    button:
      height:
        default: px 92
        sm: px 60
      color: brand
    border:
      color:
        primary: brand
        secondary: brand
    bg: brand

  atButton: {
    position: 'relative'
    display: 'flex'
    justifyContent: 'center'
    margin: js [
      0 
      'auto'
    ]
    padding: js [
      0 
      spacing.h.xl
    ] 
    height: at.button.height.default
    color: color.text.base.default
    fontSize: font.size.lg
    lineHeight: at.button.height.default
      # pxNOpx at.button.height.default
      # ,
      #   (n) => n - 2
      # , {
      #   px
      #   nopx
      # }
    textAlign: 'center'
    borderRadius: border.radius.md
    border: js [
      px 1
      'solid'
      color.border.base
    ]
    boxSizing: 'border-box'
    # line...

    ':active':
      opacity: opacity.active
    
    '&__icon':
      display: 'inline-block'
      margin: js [ 
        '2PX'
        px 20 
        0 
        px 20
      ]
    '&__text':
      display: 'inline'

    '&__wxbutton':
      position: 'absolute'
      padding: 0
      left: 0
      top: 0
      width: p 100
      height: p 100
      border: 'none'
      outline: 'none'
      backgroundColor: 'transparent'
      opacity: 0
      zIndex: 1

      '&::after':
        display: 'none'

    '&--active':
      opacity: opacity.active
    
    '&--disabled': 
      opacity: opacity.disabled

      '&:active':
        opacity: opacity.disabled

  }

  # 'at-button--primary':
  #   color: color.text.base.inverse
  #   border: js [
  #     '10PX'
  #     'solid'
  #     color.brand.default
  #   ]
  #   background: color.brand.default

  # 'at-button--secondary':
  #   color: color.brand.default
  #   border: js [
  #     '10PX'
  #     'solid'
  #     color.brand.default
  #   ]
  #   backgroundColor: color.white


  # 'at-button--circle':
  #   borderRadius:
  #     pxNOpx at.button.height.default
  #     ,
  #       (n) => n / 2
  #     , {
  #       px
  #       nopx
  #     }
  #   backgroundClip: 'border-box'
  #   overflow: 'hidden'

  # 'at-button--small':
  #   padding: js [
  #     0 
  #     spacing.h.md
  #   ] 
  #   width: 'auto'
  #   minWidth: px 100
  #   maxWidth: px 710
  #   height: at.button.height.sm
  #   fontSize: font.size.base
  #   lineHeight:
  #     pxNOpx at.button.height.sm
  #     ,
  #       (n) => n - 2
  #     , {
  #       px
  #       nopx
  #     }

  # 'at-button--small.at-button--circle': 
  #   borderRadius:
  #     pxNOpx at.button.height.sm
  #     ,
  #       (n) => n / 2
  #     , {
  #       px
  #       nopx
  #     }

  # 'at-button--full':
  #   width: p 100
  #   maxWidth: p 100
  #   borderRadius: 0
  #   borderLeft: 'none'
  #   borderRight: 'none'

