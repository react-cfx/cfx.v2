# import dd from 'ddeyes'

export default =>

  (_global, actionPoint) =>

    # dd '@global'
    return _global unless actionPoint is '@global'

    _global
