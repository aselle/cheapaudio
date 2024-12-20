import React from 'react';
import './App.css';

//import { Paper, Tabs } from '@material-ui/core'
//import { Tab } from '@material-ui/core'

//import useGlobal from "./Data/store";

import Header from './Layouts/Header';
import { useSelector, useDispatch } from 'react-redux';
import { decrement, increment } from './Data/counterslice';
import { getJson,fetchJson } from './Data/jsonslice';
import { Modules } from "./Components/Params";
import Typography from "@mui/material/Typography";

function Counter() {
  const count = useSelector((state) => state.counter.value)
  const dispatch = useDispatch()

  return (
    <div>
      <div>
        <button
          aria-label="Increment value"
          onClick={() => dispatch(increment())}
        >
          Increment
        </button>
        <span>{count}</span>
        <button
          aria-label="Decrement value"
          onClick={() => dispatch(decrement())}
        >
          Decrement
        </button>
      </div>
    </div>
  )
}

function State() {
  const json = useSelector((state) => state.json.value)
  const dispatch = useDispatch()

    return (
      <button aria-label="Load" onClick={()=>dispatch(fetchJson())}/>
    )
}


function App() {
  //const [globalState, globalActions] = useGlobal();
  const [tabValue, setTabValue] = React.useState(0);
  var  dispatch = useDispatch();
  dispatch(fetchJson());

  function handleChange(event, newTablValue) {
    setTabValue(newTablValue);
  }


  var body = "";
  // if(tabValue == 1) {
  //   body = <Models/>;
  // } else if (tabValue == 0) {
  //   body = <Params/>
  // } else {

  // }

  return (
    <div>
    <Header/>
    <State/>
    <Modules/>
    </div>
  );
}

export default App;
