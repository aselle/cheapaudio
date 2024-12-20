import { createSlice, createAsyncThunk } from '@reduxjs/toolkit'
import {produce} from "immer"


// Convert float to integer 5.23 fixed point.
function floatToHex(val) {
  if (val < -16.0 || val > 16.0) return undefined;
  return Math.round((1<<23) * val) & 0x0fffffff;
}

// Convert an intetger hex 5.23 to a float
function hexToFloat(val) {
  if(val & 0x08000000) {
      var res = ((val ^ 0xffffffff) + 1) & 0x0fffffff
      return -res / (1<<23);
  } else {
      return val / (1<<23);
  }
}

export const fetchJson = createAsyncThunk('jsonslice/fetchJson', () => {
  console.log("starting fetch of boot.json")
  return fetch('/boot.json')
  .then(res=>res.json())
  .then(data=>data)
})

export const jsonslice = createSlice({
  name: 'jsonslice',
  initialState: {
    value: null,
  },
  reducers: {
    getJson: (state) => {
    },
    setFloatParam: (state, {name, payload}) => {
      var wordAddr = payload.addr;
      var value = payload.value;
      var paramName = payload.name;
      const byteAddr = wordAddr * 4;
      //console.log(store);
      var json = state.json;
      // TODO(aselle): Handle more ics
      var progs = json.ics[0].progs;
      //console.log("prelook",  paramName, wordAddr, value, JSON.stringify(state.nameToParam));
      var param = state.nameToParam[paramName];
      console.log("par", JSON.stringify(param))

      for(var i = 0; i < progs.length; i++){
          var prog = progs[i];
          if(prog.Name === "Param") {
              var padHex = (x) => {
                  return ("0" + x.toString(16)).substr(-2);
              }
              var flt = Number.parseFloat(value);
              console.log("parsery ", flt, value)
              if(!isNaN(flt)) {
                var hexValue = floatToHex(flt);
                console.log(hexValue)
                if(hexValue != undefined) {
                  console.log("val", value, "hex", hexValue.toString(16), "addr", byteAddr);
                  var bytes = [
                      padHex((hexValue >> 24) & 0xff),
                      padHex((hexValue >> 16) & 0xff),
                      padHex((hexValue >> 8) & 0xff),
                      padHex((hexValue) & 0xff),
                  ];
                  var newParam = {Value: value, Data: bytes};
                  state.nameToParam = produce(state.nameToParam , draft => {draft[paramName] = {...draft[paramName], Value: value, Data: bytes}})
                  console.log("now it is", state.nameToParam[paramName])
                }
              }
            }
        }
        return state;
      }
  },
  extraReducers: (builder) => {
    builder.addCase(fetchJson.pending, (state,action) => {
      console.log("Pending...")

    })
    .addCase(fetchJson.fulfilled, (state, action) => {
      console.log("AWOOT!")
      var nameToParam = {}
      var json = action.payload;
      console.log("pay", action.payload)
      if(json == undefined) return;
      var modules = json.ics[0].modules;
      for(var i = 0; i < modules.length; i++) {
          // TODO(aselle): Handle more algorithms
          var params = modules[i].algorithms[0].params;
          //console.log(modules[i],params, params.length);
          for(var j = 0; j < params.length; j++) {
              // TODO(aselle): Check for duplicates.
              //console.log(j, params[j]);
              nameToParam[params[j].Name] = params[j];
          }
      }
      console.log("About to store")
      console.log(nameToParam)
      state.json =  json
      state.nameToParam = nameToParam
    })
  }
})

// Action creators are generated for each case reducer function
export const { getJson, setFloatParam } = jsonslice.actions

export default jsonslice.reducer