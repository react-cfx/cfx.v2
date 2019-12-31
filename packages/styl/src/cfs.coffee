unit = (u) =>
  (n) => "#{n}#{u}"
units = (arrUnit) =>
  arrUnit
  .reduce (r, u) =>
    {
      r...
      [u]: unit u
    }
  , {}

{
  px
  rpx
  vh
  per
} = units [
  'px'
  'rpx'
  'vh'
  'per'
]
per = unit '%'

color = (n) =>
  arrN = "#{n}".split ''
  switch arrN.length
    when 6
    then "##{n}"
    when 3
    then "##{n}#{n}"
    when 2
    then "##{n}#{n}#{n}"
    when 1
    then [
      '#'
      n
      n
      n
      n
      n
      n
    ].join ''
    else "##{n}"

makeArray = (a) =>
  unless Array.isArray a
  then [a]
  else a
mayBeJoin = (a, beJoin) =>
  if a.length > 1
  then a.join beJoin
  else a

join = (a, beJoin) =>
  mayBeJoin(
    makeArray a
    beJoin
  )
joinS = (a) => join a, ' '
joinP = (a) => join a, ', '

func = (funcName, funcBody) =>
  "#{funcName}(#{funcBody})"
fujp = (funcName, a) =>
  func funcName
  ,
    joinP makeArray a
fujs = (funcName, a) =>
  func funcName
  ,
    joinS makeArray a

scale = (n) => func 'scale', n
scaleX = (n) => func 'scaleX', n
scaleY = (n) => func 'scaleY', n

rgba = (a) =>
  fujp 'rgba', a
cubicBezier = (a) =>
  fujp 'cubic-bezier', a
matrix = (a) =>
  fujp 'matrix', a
translate = (a) =>
  fujp 'translate', a

calc = (a) =>
  fujs 'calc', a

export {
  unit
  units

  px
  rpx
  vh

  per

  color

  func
  fujp 

  joinS
  joinP

  scale
  scaleX
  scaleY

  rgba
  cubicBezier
  matrix
  translate

  calc
}
