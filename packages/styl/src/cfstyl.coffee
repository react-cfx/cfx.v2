# import dd from 'ddeyes'

pluginsCall = (plugins, actionPoint, defValue) =>

  if plugins?
  then(
    plugins.reduce (r, c) =>
      t = c r, actionPoint
      if t?
      then t
      else r
    , defValue
  )
  else defValue

recRenderer = (
  _selectorName
  selectorBody
  plugins
  rootSpace
) =>

  selectorName =

    if rootSpace in [
      '@fonts'
      '@tags'
    ]
    then _selectorName
    else
      ### :PluginPoint
      # -- 'selectorName'
      ###
      pluginsCall plugins
      , 'selectorName'
      , _selectorName

  ruleKs = Object.keys selectorBody
  ruleKs
  .reduce (r, ruleK) =>

    ruleV = selectorBody[ruleK]

    switch typeof ruleV
      when 'string', 'number'
      then(

        ### :PluginPoint
        # -- 'ruleK'
        ###
        _ruleK =
          pluginsCall plugins
          , 'ruleK'
          , ruleK

        ### :PluginPoint
        # -- 'ruleA'
        ###
        rule =
          pluginsCall plugins
          , 'ruleA'
          ,
            [_ruleK]: 
              ### :PluginPoint
              # -- 'ruleV'
              ###
              pluginsCall plugins
              , 'ruleV'
              , ruleV

        [
          name: r[r.length - 1].name
          body: {
            r[r.length - 1].body...
            rule...
          }
        ]

      )
      when 'object' 
      then(
        _c = recRenderer(
          ruleK
          ruleV
          plugins
          rootSpace
        )
        [
          r...
          (
            _c.reduce (_r_, _c_) =>
              [
                _r_...
                name: [
                  r[0].name...
                  _c_.name...
                ]
                body: _c_.body
              ]
            , []
          )...
        ]
      )
      else r
  , [
    name: [
      selectorName
    ]
    body: {}
  ]

getClasses = (styles) =>
  (
    Object.keys styles
  )
  .reduce (r, c) =>
    {
      r...
      (
        if c.includes '-'
        then [(c.split '-')[0]]: ".#{c}"
        else [c]: c
      )...
    }
  , {}

Renderer = (cfstyls, plugins) =>

  selectorNames = Object.keys cfstyls
  selectorNames
  .reduce (_r, selectorName) =>

    [
      _r...
      (
        switch selectorName
          when '@font-face'
          then(
            recRenderer selectorName
            , cfstyls[selectorName] 
            , plugins
            , '@fonts'
          )
          when '@tags', '@global'
          then(
            (
              Object.keys cfstyls[selectorName] 
            )
            .reduce (_r_, _c_) =>
              [
                _r_...
                (
                  recRenderer _c_
                  , cfstyls[selectorName][_c_]
                  , plugins
                  , selectorName
                )...
              ]
            , []
          )
          else(
            recRenderer selectorName
            , cfstyls[selectorName] 
            , plugins
            , '@styles'
          )
      )...
    ]
  , []
  .reduce (r, c) =>

    ### :PluginPoind
    # -- 'classNames'
    ###
    classNames = # c.name
      pluginsCall plugins
      , 'classNames'
      , c.name

    {
      r...
      [classNames.join ' ']: c.body
    }

  , {}

createRenderer = (options) =>
  if options?.plugins?
    {
      plugins
    } = options

  classes = {}

  render: (_cfstyls) =>

    cfstyls = (
      Object.keys _cfstyls
    )
    .reduce (r, c) =>
      {
        r...
        (
          switch c
            
            when '@fonts'
            then(
              _fonts: {
                r._fonts...
                ### :PluginPoint
                # -- '@font'
                ###
                (
                  pluginsCall plugins
                  , '@fonts'
                  , _cfstyls[c]
                )...
              }
            )

            when '@global'
            then(
              _global: {
                r._global...
                ### :PluginPoint
                # -- '@global'
                ###
                (
                  pluginsCall plugins
                  , '@global'
                  , _cfstyls[c]
                )...
              }
            )

            when '@tags'
            then(
              _tags: {
                r._tags...
                _cfstyls[c]...
              }
            )

            else(
              _styles: {
                r._styles...
                [c]: _cfstyls[c]
              }
            )
        )...
      }
    ,
      _fonts: {}
      _global: {}
      _tags: {}
      _styles: {}

    ### :PluginPoint
    # -- 'hashClassKey'
    ###
    _styles =
      pluginsCall plugins
      , 'hashClassKey'
      , cfstyls._styles

    styles = {
      (
        if cfstyls._fonts?
        then(
          '@font-face':
            cfstyls._fonts
        )
        else {}
      )...
      (
        if cfstyls._global?
        then(
          '@global':
            cfstyls._global
        )
        else {}
      )...
      (
        if cfstyls._tags?
        then(
          '@tags':
            cfstyls._tags
        )
        else {}
      )...
      _styles... 
    }

    classes = getClasses _styles
    Renderer styles, plugins

  getClasses: => classes

renderToString = (render) =>

  return '' unless (typeof render) is 'object'

  (
    Object.keys render
  )
  .reduce (r, c) =>
    rule = (
      Object.keys render[c]
    )
    .reduce (_r, _c, _i, _a) =>
      [
        _r...
        [
          "  "
          "#{_c}: #{render[c][_c]}"
          ";"
          # (
          #   if _i is (_a.length - 1)
          #   then []
          #   else [ ";" ]
          # )...
        ]
        .join ''
      ]
    , []
    .join "\n"
    [
      (
        if r.length is 0
        then []
        else [r]
      )...
      """
      #{c} {\n#{rule}\n}
      """
    ]
    .join "\n"
  , []

export {
  createRenderer
  renderToString
}
