objectToString = (style) =>
  if style and typeof style is 'object'
    styleStr = ''
    (Object.keys style).forEach (key) =>
      lowerCaseKey = (key.replace /([A-Z])/g, '-$1').toLowerCase()
      styleStr += "#{lowerCaseKey}: #{style[key]}"
    
    styleStr
  else if style and typeof style is 'string'
    style
  else ''


mergeStyle = (style1 , style2) =>
  if (style1 and typeof style1 is 'object') && (style2 and style2 is 'object')
    Object.assign({}, style1. style2)
  objectToString(style1) + objectToString(style2)


export default mergeStyle