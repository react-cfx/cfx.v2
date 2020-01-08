import { 
  spacing
  font
  color
  border
  line
  opacity
} from '../../style/variables/default'


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
      (spacing {px}).h.xl
    ] 
    height: at.button.height.default
    color: color.text.base.default
    fontSize: (font {px}).size.lg
    lineHeight: at.button.height.default - 2
    textAlign: 'center'
    borderRadius: (border {px, per: p}).radius.md
    border: js [
      px 1
      'solid'
      color.border.base
    ]
    boxSizing: 'border-box'
    # line...

    '&:active':
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


    '&--primary':
      color: color.text.base.inverse
      border: js [
        px 1
        'solid'
        color.brand.default
      ]
      background: color.brand.default

    '&--secondary':
      color: color.brand.default
      border: js [
        px 1
        'solid'
        color.brand.default
      ]
      backgroundColor: color.white


    '&--circle':
      borderRadius: at.button.height.default / 2
      backgroundClip: 'border-box'
      overflow: 'hidden'

    '&--small':
      padding: js [
        0 
        (spacing {px}).h.md
      ] 
      width: 'auto'
      minWidth: px 100
      maxWidth: px 710
      height: at.button.height.sm
      fontSize: (font {px}).size.base
      lineHeight: at.button.height.sm - 2

    '&--small.at-button--circle': 
      borderRadius: at.button.height.sm / 2

    '&--full':
      width: p 100
      maxWidth: p 100
      borderRadius: 0
      borderLeft: 'none'
      borderRight: 'none'
  }
