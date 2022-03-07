import React from 'react';
import './App.css';

import { Paper, Tabs } from '@material-ui/core'
import { Tab } from '@material-ui/core'


import Header from './Layouts/Header'
import Footer from './Layouts/Footer'
import Models from './Layouts/Models'
import Params from './Components/Params'

function App() {
  const [value, setValue] = React.useState(0);

  function handleChange(event, newValue) {
    setValue(newValue);
  }


  var body = "";
  if(value == 1) {
    body = <Models/>;
  } else if (value == 0) {
    body = <Params/>
  } else {

  }

  return (
    <div className="App">
      <Header/>

      <Tabs
			value={value}
      onChange={handleChange} 
      indicatorColor="primary"
			textColor="primary"
			centered
		>

			<Tab label="Parameters" />
			<Tab label="Uploads" />
		</Tabs>
    {body}
    </div>
  );
}

export default App;
