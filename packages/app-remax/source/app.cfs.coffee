import icons from './style/components/icons'
import { iconfont } from './style/components/fonts'

export default ({
  cfs: {
    vh
    color: c
  }
}) =>

  '@fonts': {
    iconfont
  }

  '@tags':
    page:
      backgroundColor: c 'f8'

      display: 'flex'
      flexDirection: 'column'
      minHeight: vh 100

      boxSizing: 'border-box'

    view:
      boxSizing: 'border-box'

  '@global': {
    icons...

    page:
      position: 'relative'
  }
