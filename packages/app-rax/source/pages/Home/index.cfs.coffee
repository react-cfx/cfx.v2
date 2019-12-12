export default ({
  cfs: {
    rpx
    joinS: js
    color: c
  }
}) =>

  home:
    alignItems: 'center'
    marginTop: rpx 200

  title:
    fontSize: rpx 45
    fontWeight: 'bold'
    margin: js [
      rpx 20
      0
    ]

  info:
    fontSize: rpx 36
    margin: js [
      rpx 8
      0
    ]
    color: c 555
