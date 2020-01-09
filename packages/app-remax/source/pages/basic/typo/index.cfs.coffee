export default ({
  cfs: {
    px
    per: p
    joinS: js
  }
}) =>

  tableTypo:
    padding: js [
      0
      px 28
    ]

    '&__head':
      padding: js [
        px 20
        px 32
      ]
      color: '#AFB9CC'
      fontSize: px 28
      border: js [
        px 1
        'solid'
        '#C4D9E7'
      ]
      borderRadius: px 8

      thead:
        display: 'inline-block'

        ':nth-child(1)':
          width: p 44

        ':nth-child(2)':
          width: p 18

    '&__body':
      marginTop: px 20

    '&__line':
      marginTop: px 20
      padding: js [
        0
        px 32
      ]
      display: 'flex'
      alignItems: 'center'
      height: px 80
      color: '#354052'
      fontSize: px 28


      col:
        display: 'inline-block'

        ':nth-child(1)':
          width: p 44

        ':nth-child(2)':
          width: p 18

      ':nth-child(2n+1)':
        backgroundColor: '#FAFBFC'

      h0:
        fontSize: px 40

      h1:
        fontSize: px 36

      h2:
        fontSize: px 32

      h3:
        fontSize: px 28

      h4:
        fontSize: px 24

      h5:
        fontSize: px 20
