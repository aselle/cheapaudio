import { configureStore } from '@reduxjs/toolkit'
import counterReducer from './counterslice'
import jsonReducer from './jsonslice'
export default configureStore({
    reducer: {
        counter: counterReducer,
        json: jsonReducer,
      },
})
