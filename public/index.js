import React from 'react'
import ReactDOM from "react-dom";
import Courses from 'Container/courses/index.jsx';
import Router from './routes.js';

// styles
import './src/styles/index.css'
import 'weui';
import 'react-weui/build/packages/react-weui.css';

window.extAsyncInit = function() {
  MessengerExtensions.getContext(
    '307659789700439',
    function success(context) {
      const wrapper = document.getElementById('app')

      wrapper ? ReactDOM.render(<Router context={context} data={window.data}/>, wrapper) : false
    },
    function error(err) {
      const wrapper = document.getElementById("app");

      wrapper ? ReactDOM.render(<h1>hello world</h1>, wrapper) : false;
      alert(err)
    });
};

(function(d, s, id){
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) {return;}
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.com/en_US/messenger.Extensions.js";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'Messenger'));
