iconClasses = (iconsObj) =>
  (
    Object.keys iconsObj
  )
  .reduce (r, c) =>

    _c = c.split ''

    postfix = (
      c.match /\d*$/
    )[0] 

    k = [
      'atIcon'
      _c[0].toUpperCase()
      _c[1..].join ''
    ].join ''

    {
      r...
      "#{k}#{
        if postfix isnt ''
        then "-#{postfix}"
        else ''
      }::before":
        content: "\"\\e#{iconsObj[c]}\""
    }
  , {}

export default {

  atIcon:

    display: 'inline-block'

    fontFamily: 'iconfont'
    fontStyle: 'normal'
    fontWeight: 400
    fontVariant: 'normal'

    textTransform: 'none'
    textRendering: 'auto'
    lineHeight: 1
    '-webkit-font-smoothing': 'antialiased'
    verticalAlign: 'middle'

    # margin-top: -2px; // Hack  

  (
    iconClasses
      add: 960
  )...
}
