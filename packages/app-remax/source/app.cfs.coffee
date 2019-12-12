import icons from './style/components/icons'
import { iconfont } from './style/components/fonts'

export default

  '@fonts': {
    iconfont
  }

  '@tags':
    page:
      backgroundColor: '#f8f8f8'

      display: 'flex'
      flexDirection: 'column'
      minHeight: '100vh'

      boxSizing: 'border-box'

    view:
      boxSizing: 'boxder-box'

  '@global': {
    icons...

    page:
      position: 'relative'
  }
