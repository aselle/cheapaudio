// Copyright 2022 Andrew Selle
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License
import React from 'react';
import useGlobal from "../Data/store";
import TextField from '@material-ui/core/TextField';
import Paper from '@material-ui/core/Paper';
import Card from '@material-ui/core/Paper';
import { makeStyles } from '@material-ui/core/styles';


const useStyles = makeStyles({
    card: {
      minWidth: 275,
      paddingBottom: 22,
      margin: 20,
    },
    bullet: {
      display: 'inline-block',
      margin: '0 2px',
      transform: 'scale(0.8)',
    },
    title: {
      fontSize: 14,
    },
    pos: {
      marginBottom: 12,
    },
  });

const Param = (props) => {
    const [globalState, globalActions] = useGlobal();
    function onChange({target: {value}}) {
      console.log(value);
      globalActions.setFloatParam(props.data.Name, props.addr, value);
    }
    return <TextField onChange={onChange}  defaultValue={props.data.Value} id={props.data.Name} label={props.data.Name} />
}

const Module = (props) => {
    const classes = useStyles();

    const [globalState, globalActions] = useGlobal();
    console.log("Module ", props.CellName, props)
    var algos = props.data.algorithms;
    if(algos === undefined) return "";
    var algo = algos[0];
    return  <Card  className={classes.card}><h3>{props.CellName}</h3>
       {algo.params.map((param) => <Param addr={param.Address} key={param.Name} data={param}/>)}
       <br/></Card>
    
}


export default (props) => {
    const [globalState, globalActions] = useGlobal();

    var v = globalActions.get();
    if(v===null){
        return <p>Don't have JSON</p>
    } else {
        return v.ics[0].modules.map((element)  =>
             <Module key={element.CellName} CellName={element.CellName} data={element}/>)
        
    }
};