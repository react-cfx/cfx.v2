export default ({
  cfs: {
    px
    vh
    joinS: js
    rgba
    calc
    color: c
  }
}) =>

  panelHeader:
    display: 'flex'
    alignItems: 'center'
    padding: px 60
    height: px 180

    '&__icon':
      display: 'flex'
      justifyContent: 'center'
      alignItems: 'center'
      width: px 80
      height: px 80
      color: '#78A4FA'
      textAlign: 'center'
      background: c 'f'
      boxShadow: js [
        0
        px 20
        px 80
        0
        rgba [
          0
          0
          0
          0.11
        ]
      ]
      borderRadius: px 10

      img:
        width: px 36
        height: px 36

    '&__title':
      marginLeft: px 32
      color: c '78A4FA'
      fontSize: px 36
      fontWeight: 'bold'

  panelBody:
    minHeight: calc [
      vh 100
      '-'
      px 180
    ]
    background: '#fff'
    boxShadow: js [
      0
      px 26
      px 163
      0
      rgba(0, 0, 0, 0.11)
    ]

  componentList:

    margin: js [
      px 20
      px 60
      px 40
    ]

    '&__item':
      display: 'flex'
      alignItems: 'center'
      justifyContent: 'space-between'
      height: px 120
      # @include hairline-bottom()

      name:
        color: '#1d1d26'
        fontSize: px 28

      atIcon:
        color: '#CCC'
