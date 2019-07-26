import React, { Component } from "react";
import PropTypes from 'prop-types';
import CourseItem from 'Presentational/courses/course_item.jsx';
import CourseService from 'Api/course.js'
import * as R from 'ramda';

class Courses extends Component {
  state = {
    user_courses: [],
    loaded: false
  }

  componentWillMount() {
    CourseService.get_by_user(this.props.context.psid)
      .then(response => {
        this.setState({user_courses: response, loaded: true})
      })
  }

  render() {
    const {loaded, user_courses} = this.state;
    const {data} = this.props;

    return (
      <ul>
        {
          loaded && R.map(course => (
            <CourseItem
              data={course}
              subscribed={R.find(R.propEq('name', course.name))(user_courses)}
            />
          ))(data.courses)
        }
      </ul>
    );
  }
}

Courses.propTypes = {
  data: PropTypes.object.isRequired,
  context: PropTypes.object.isRequired
}

export default Courses;

