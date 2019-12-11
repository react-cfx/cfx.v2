import * as React from 'react'
import CFX from './utils/cfx'

import './app.cfs.css'

Context = React.createContext {}

c = CFX
  ContextProvider: Context.Provider

App = ({children}) =>

  c.ContextProvider {}
  , children

export default App
export {
  Context
}
