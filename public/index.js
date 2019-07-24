import FormContainer from './src/components/container/FormContainer.jsx'
import React from 'react'
import ReactDOM from "react-dom";

const wrapper = document.getElementById("content");

wrapper ? ReactDOM.render(<FormContainer data={window.data}/>, wrapper) : false;
