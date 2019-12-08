className = (classname) =>
  (
    classname.split ''
  )[1..]
  .join ''

export {
  className
}

export default ({
  styl
  style
  styles
}) =>

  classes = (
    styl style
  ).classes()

  (
    Object.keys classes
  )
  .reduce (r, c) =>
    {
      r...
      [c]: styles[className classes[c]]
    }
  , {}
