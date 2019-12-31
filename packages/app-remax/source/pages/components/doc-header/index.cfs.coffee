export default ({
  cfs: {
    px
  }
}) =>
  docHeader:
    display: 'flex'
    alignItems: 'center'
    padding: px 60
    height: px 180

    '&__title':
      position: 'relative'
      height: px 90
      color: '#333'
      fontSize: px 40
      fontWeight: 'bold'

    '&__title::after':
      content: '\" \"'
      position: 'absolute'
      left: 0
      bottom: 0
      display: 'inline-block'
      width: px 120
      height: '2PX'
      borderRadius: '1PX'
      backgroundColor: '#6190E8'
