export default ({
  cfs: {
    px
    per: p
    rgba
    joinS: js
  }
}) =>

  panel:
    padding: js [
      px 32
      0
      px 24
    ]

    '&__title':
      position: 'relative'
      marginBottom: px 50
      paddingLeft: px 50
      color: '#6a6a77'
      fontSize: px 32
      fontWeight: 'bold'
      lineHeight: 1.5

    '&__title::before':
      content: '\" \"'
      display: 'inline-block'
      position: 'absolute'
      left: px 24
      top: p 50
      marginTop: px -20
      width: '2PX'
      height: px 40
      backgroundColor: '#6190e8'
      boxShadow: js [
        0
        px 7
        px 12
        0
        rgba [
          97
          144
          232
          0.2
        ]
      ]
      borderRadius: px 1

    '&__content':
      padding: js [
        0
        px 20
      ]

      noPadding:
        padding: 0
