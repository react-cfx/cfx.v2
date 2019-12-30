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
  atButtonPrimary:
    color: color.text.base.inverse
    border: js [
      px 1
      'solid'
      color.brand.default
    ]
    background: color.brand.default
  atButtonSecondary: 
    color: color.brand.default
    border: js [
      px 1
      'solid'
      color.brand.default
    ]
    backgroundColor: '#fff'
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
    height: px 92
    color: color.text.base.default
    fontSize: (font {px}).size.lg
    lineHeight: px 90
    textAlign: 'center'
    borderRadius: (border {px, p}).radius.md
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
        px 2 
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

    '&--circle':
      borderRadius: px (92 / 2)
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
      height: px 60
      fontSize: (font {px}).size.base
      lineHeight: px 58
      '&.at-button--circle': 
        borderRadius: px 30

    '&--full':
      width: p 100
      maxWidth: p 100
      borderRadius: 0
      borderLeft: 'none'
      borderRight: 'none'
  }