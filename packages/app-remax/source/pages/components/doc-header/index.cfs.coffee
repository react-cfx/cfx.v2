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

      '&::after':
        content: '\" \"'
        position: 'absolute'
        left: 0
        bottom: 0
        display: 'inline-block'
        width: px 120
        height: px 2
        borderRadius: px 1
        backgroundColor: '#6190E8'
