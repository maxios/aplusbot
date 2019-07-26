import React from 'react';
import {Route, Switch} from 'react-router-dom';
import {BrowserRouter as Router} from 'react-router-dom';
import Courses from 'Container/courses/index.jsx';

const Routes = props => {
  return (
    <Router>
      <Route
        path="/courses/subscriptions"
        render={() => <Courses {...props} />}
      />
    </Router>
  )
}
export default Routes;
