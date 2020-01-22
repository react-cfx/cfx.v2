# import dd from 'ddeyes'

export default =>

  (keyframes, actionPoint) =>

    return keyframes unless actionPoint is '@keyframes'

    keyframes
