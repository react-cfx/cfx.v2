import Color from 'color'

colorToRgba = (color, alpha) =>
  a = 
    unless alpha?
    then color.valpha
    else alpha

  {
    color.object()...
    a
  }

percentToFloat = (percent) =>
  (parseFloat percent) / 100.0

getPerscent = (percent) =>
  if percent[percent.length - 1] is '%'
  then percentToFloat percent
  else percent

export default (color1, color2, percent) =>
  _percent = getPerscent percent
  Color color1
  .mix(
    Color color2
    _percent
  )


export default (color, percent) =>

  mix(
    color
    '#FFF'
    1 - getPerscent percent
  )
  .hex()
