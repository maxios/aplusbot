import React from 'react';
import {Route, Switch} from 'react-router-dom';
import {BrowserRouter as Router} from 'react-router-dom';
import Courses from './src/components/container/courses.jsx';

const renderRoutes = props => {
  alert(window.location.href)
  return (
    <Switch>
      <Route exact path="/courses/subscriptions" component={Courses}/>
    </Switch>
  )
};

const router = props => (
  <Router>
    <Route render={renderRoutes}/>
  </Router>
)
export default ;
