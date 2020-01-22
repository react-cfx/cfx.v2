export default ({
  cfs: {
    unit

    px
    deg
    rotate
    s
    per: p

    joinS: js

    cubicBezier
  }
}) =>

  PX = unit 'PX'

  at =
    loading:
      size: px 36
      color: '#FFF' # color.white

  '@keyframes':

    loading:

      [p 0]:
        transform: rotate deg 0
      [p 100]:
        transform: rotate deg 360

  atLoading:

    display: 'inline-block'
    position: 'relative'
    width: at.loading.size
    height: at.loading.size

    '&__ring':
      boxSizing: 'border-box'
      display: 'block'
      position: 'absolute'
      width: at.loading.size
      height: at.loading.size
      margin: '1PX'
      borderWidth: '1PX'
      borderStyle: 'solid'
      borderColor: js [
        at.loading.color
        'transparent'
        'transparent'
        'transparent'
      ]
      borderRadius: p 50
      animation: js [
        'loading'
        s 1.2
        cubicBezier [
          0.5
          0
          0.5
          1
        ]
        'infinite'
      ]

      '&:nth-child(1)':
        animationDelay: s -0.45

      '&:nth-child(2)':
        animationDelay: s -0.3

      '&:nth-child(3)':
        animationDelay: s -0.15
