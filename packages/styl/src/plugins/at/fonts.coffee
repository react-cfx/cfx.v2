# import dd from 'ddeyes'

testHeaderStrType = (headerStr) =>
  if headerStr.includes 'data:'
    return 'data'
  if headerStr.includes 'charset='
    return 'charset'
  if headerStr is 'base64'
    return 'base64'
  else return ''

getFontStrHeaderObj = (fontHeaderStr) =>
  fontHeaderStr
  .split ';'
  .reduce (r, c, i) =>
    {
      r...
      (
        switch testHeaderStrType c
          when 'data'
          then {
            data: c.replace 'data:', ''
            (
              if c.includes 'woff'
              then format: 'woff'
              else {}
            )...
          }
          when 'charset'
          then charset: c.replace 'charset=', ''
          when 'base64'
          then type: 'base64'
          else {}
      )...
    }
  , {}

getFontStrObj = (fontStr) =>
  fontStr
  .split ','
  .reduce (r, c, i) =>
    return r if i > 1
    {
      r...
      (
        switch i
          when 0
          then getFontStrHeaderObj c
          when 1
          then body: c
          else {}
      )...
    }
  ,
    source: fontStr

getFontsSrc = (fonts) =>
  fonts
  .reduce (r, c) =>
    fontStrObj =
      if (typeof c) is 'string'
      then getFontStrObj c
      else
        type: ''
    [
      r...
      (
        switch fontStrObj.type
          when 'base64'
          then [
            [
              "url(\"#{fontStrObj.source}\")"
              (
                if fontStrObj.format?
                then [ "format(\"#{fontStrObj.format}\")" ]
                else []
              )...
            ].join ' '
          ]
          else [ '' ]
      )...
    ]
  , []

export default =>

  (fonts, actionPoint) =>

    # dd '@fonts'
    return fonts unless actionPoint is '@fonts'

    _result = (
      Object.keys fonts
    )
    .reduce (r, c) =>
      src: [
        r.src...
        getFontsSrc fonts[c]
      ]
      fontFamily: [
        r.fontFamily...
        "\"#{c}\""
      ]
    ,
      src: []
      fontFamily: []

    src: _result.src.join ','
    fontFamily: _result.fontFamily.join ','
