export default ({
  cfs: {
    px
    vh
    joinS: js
    rgba
    calc
    color: c
    per: p
  }
}) =>

  color:
    marginBottom: px 40
    width: p 33
    textAlign: 'center'

    circle:
      position: 'relative'
      margin: js [
        0
        'auto'
      ]
      width: px 150
      height: px 150
      background: c '78A4FA'
      borderRadius: p 50
    
      'inner-circle-1':
        position: 'absolute'
        top: p 50
        left: p 50
        marginLeft: px -50
        marginTop: px -50
        width: px 100
        height: px 100
        background: c 'fff'
        borderRadius: p 50

      'inner-circle-2':
        position: 'absolute'
        top: p 50
        left: p 50
        marginLeft: px -32
        marginTop: px -32
        width: px 64
        height: px 64
        border: js [
          px 1
          'solid'
          '#78A4FA'
        ]
        borderRadius: p 50
        opacity: 0.3
    
    '&__info':
      marginTop: px 20
      color: '#88889C'
      fontSize: px 20
      textAlign: 'center'
    
      name: 
        display: 'block'
      
      hex:
        display: 'block'
