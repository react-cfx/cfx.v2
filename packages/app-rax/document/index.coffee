import CFX from '../../utils/cfx'

C = CFX {
  'html'
  'head'
  'meta'
  'title'
  'link'
  'body'
  'div'
  'script'
}

Document = (props) =>
  {
    publicPath
    styles
    scripts
  } = props

  C.html {}
  ,
    C.head {}
    ,
      C.meta
        charset: 'utf-8'
      C.meta
        name: 'viewport'
        content: [
          'width=device-width'
          'initial-scale=1'
          'maximum-scale=1'
          'minimum-scale=1'
          'user-scalable=no'
          'viewport-fit=cover'
        ].join ','
        title: 'rax-app'
      styles.map (src, index) =>
        C.link
          rel: 'stylesheet'
          href: "#{publicPath}#{src}"
          key: "style_#{index}"
    C.body {}
    ,
      C.div
        id: 'root'
      ,
        scripts.map (src, index) =>
          C.script
            src: "#{publicPath}#{src}"
            key: "script_#{index}"

export default Document
