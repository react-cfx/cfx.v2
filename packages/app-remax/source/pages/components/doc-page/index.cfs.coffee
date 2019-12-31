export default ({
  cfs: {
    px
    vh
    joinS: js
    rgba
    calc
  }
}) =>

  docBody:
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
      rgba [
        0
        0
        0
        0.11
      ]
    ]

    paddingBottom: px 60
    paddingBottom: calc [
      'constant(safe-area-inset-bottom)'
      '+'
      px 60
    ]
    paddingBottom: calc [
      'env(safe-area-inset-bottom)'
      '+'
      px 60
    ]
