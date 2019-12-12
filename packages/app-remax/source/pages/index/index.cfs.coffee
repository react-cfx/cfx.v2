export default ({
  cfs: {
    px
    per: p
    joinS: js
    color: c
    rgba
    # matrix
    # translate
  }
}) =>

  page:
    position: 'relative'
    backgroundColor: '#f8f8f8'

    view:
      boxSizing: 'border-box'

  pageIndex:
    paddingTop: px 60
    paddingBottom: px 100

    logo:
      margin: js [
        0
        'auto'
      ]
      marginTop: px 60
      fontSize: 0
      textAlign: 'center'

      img:
        width: px 264
        height: px 180

    pageTitle:
      marginTop: px 24
      color: '#333'
      fontSize: px 36
      textAlign: 'center'

    moduleList:
      marginTop: px 72
      display: 'flex'
      flexDirection: 'column'
      alignItems: 'center'

      '&__item':
        boxSizing: 'border-box'
        display: 'flex'
        flexDirection: 'row'
        alignItems: 'center'
        marginBottom: px 40
        padding: js [
          0
          px 30
        ]
        width: p 90
        height: px 144
        background: '#fff'
        boxShadow: js [
          0
          px 8
          px 40
          0
          rgba [
            0
            0
            0
            0.04
          ]
        ]
        borderRadius: px 10

        ':last-child':
          marginBottom: 0

      '&__icon':
        display: 'flex'
        justifyContent: 'center'
        alignItems: 'center'
        width: px 70
        height: px 70
        color: '#78A4FA'
        textAlign: 'center'
        border: js [
          px 5
          'solid'
          rgba [
            120
            164
            250
            0.16
          ]
        ]
        borderRadius: p 50

        img:
          width: px 30
          height: px 30

      '&__info':
        flex: 1
        textAlign: 'left'
        marginLeft: px 24

        title:
          color: '#6A6A77'
          fontSize: px 28
          fontWeight: 'bold'

        content:
          color: '#88889C'
          fontSize: px 22

      '&__arrow':
        display: 'flex'
        justifyContent: 'center'
        alignItems: 'center'
        width: px 62
        height: px 62
        color: '#fff'
        textAlign: 'center'
        background: '#78A4FA'
        boxShadow: js [
          px 4
          px 10
          px 30
          0
          rgba [
            120
            164
            250
            0.30
          ]
        ]
        borderRadius: p 50
