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
  
  colorList:
    display: 'flex'
    justifyContent: 'flex-start'
    alignItems: 'flex-star'
    flexWrap: 'wrap'

  
  colorItem:
    marginBottom: px 40
    width: '33%'
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
      borderRadius: '50%'
    
      'inner-circle-1':
        position: 'absolute'
        top: '50%'
        left: '50%'
        marginLeft: px -50
        marginTop: px -50
        width: px 100
        height: px 100
        background: c 'fff'
        borderRadius: '50%'

      'inner-circle-2':
        position: 'absolute'
        top: '50%'
        left: '50%'
        marginLeft: px -32
        marginTop: px -32
        width: px 64
        height: px 64
        border: js [
          px 1
          'solid'
          '#78A4FA'
        ]
        borderRadius: '50%'
        opacity: '0.3'
      
    
    '&__info':
      marginTop: px 20
      color: '#88889C'
      fontSize: px 20
      textAlign: 'center'
    
      name: 
        display: 'block'
      
      hex:
        display: 'block'